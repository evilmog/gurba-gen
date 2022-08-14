const LEVELS_EXTENSION: &str = "level";
const LEVELS_CHAR_ROOM: char = ' ';
const LEVELS_CHAR_DOWN: char = 'D';
const LEVELS_CHAR_UP: char = 'U';
const OUTPUT_CELL_DELIMITER: &str = "\n";
const OUTPUT_SECTION_DELIMITER: &str = ":";

use color_eyre::eyre::Result;
use std::fs::{self, write};
use std::path::Path;

pub fn parse(path: &str, output_path: &str) -> Result<()> {
    let levels_path = Path::new(path);
    let output_path = Path::new(output_path);

    println!(
        "Scanning for levels in {:?}.",
        Path::canonicalize(levels_path)?
    );

    let entries = fs::read_dir(levels_path)?;
    let mut levels: Vec<fs::DirEntry> = entries
        .filter_map(|entry| {
            let e = entry.unwrap();
            let path = e.path();
            let metadata = fs::metadata(&path).unwrap();

            if metadata.is_file() && {
                let ref this = path.extension();
                let x = &LEVELS_EXTENSION;
                match this {
                    Some(y) => x.eq(y),
                    None => false,
                }
            } {
                return Some(e);
            }

            return None;
        })
        .collect();

    println!("Found and will parse {:?} level(s):", levels.len());

    let mut cells: Vec<Cell> = Vec::new();
    let mut z = 0;

    // Levels should be searched in ascending lexicographic order
    levels.sort_by(|a, b| a.path().cmp(&b.path()));

    for level in levels {
        let entry = level;
        let path = entry.path();

        println!("Parsing {:?}...", Path::canonicalize(&path)?);

        let lines = super::read_lines(path)?;
        let mut y = 0;
        let mut rowlen: usize;

        for line in lines {
            let mut x = 0;
            let line = line?;
            rowlen = line.len();
            let chars = line.chars();

            for char in chars {
                let mut cell = Cell {
                    char,
                    x,
                    y,
                    z,
                    exits: Vec::new(),
                };

                // Cardinal exits
                if [LEVELS_CHAR_ROOM, LEVELS_CHAR_DOWN, LEVELS_CHAR_UP].contains(&cell.char) {
                    // Consider that each exit is a corridor to an exit in another room, so it only makes sense to create them together.
                    // Iterators don't let us look into the future, so we are looking for corridors behind the cursor.

                    // East-West is based on the last cell
                    let last_cell = cells.last_mut();
                    if let Some(l) = last_cell {
                        if LEVELS_CHAR_ROOM == l.char {
                            l.exits.push("e".to_string());
                            cell.exits.push("w".to_string());
                        }
                    }

                    // We can't look behind the first row.
                    if y > 0 {
                        // North-South is based on the cell in the same position on the last row
                        let cells_len = cells.len();
                        let cell_in_last_row = cells.get_mut(cells_len - rowlen);
                        if let Some(l) = cell_in_last_row {
                            if LEVELS_CHAR_ROOM == l.char {
                                l.exits.push("s".to_string());
                                cell.exits.push("n".to_string());
                            }
                        }
                    }
                }

                // Z-axis exits
                match cell.char {
                    LEVELS_CHAR_DOWN => cell.exits.push("d".to_string()),
                    LEVELS_CHAR_UP => cell.exits.push("u".to_string()),
                    _ => (),
                }

                cells.push(cell);
                x += 1;
            }
            y += 1;
        }
        z += 1;
    }

    let coords: Vec<String> = cells
        .iter()
        .filter(|cell| [LEVELS_CHAR_ROOM, LEVELS_CHAR_DOWN, LEVELS_CHAR_UP].contains(&cell.char))
        .map(|cell| cell.to_string())
        .collect();

    println!("Writing results to {}", output_path.to_string_lossy());
    write(output_path, coords.join(OUTPUT_CELL_DELIMITER)).unwrap();

    Ok(())
}

struct Cell {
    char: char,
    x: u16,
    y: u16,
    z: u16,
    exits: Vec<String>,
}

impl Cell {
    fn to_string(&self) -> String {
        format!(
            "{},{},{}{}{}",
            self.x,
            self.y,
            self.z,
            OUTPUT_SECTION_DELIMITER,
            self.exits.join(",")
        )
    }
}
