use color_eyre::eyre::Result;
use glob::glob;
use image;
use std::{
    collections, fs,
    path::{Path, PathBuf},
};

const MAP_WIDTH: u32 = 100;

pub fn palette() -> collections::HashMap<char, image::Rgb<u8>> {
    let mut colors = collections::HashMap::new();

    // dome
    colors.insert('1', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('2', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('3', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('4', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('5', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('6', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('7', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('8', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('a', image::Rgb([0xB2, 0xEB, 0xF2]));
    colors.insert('G', image::Rgb([0xB2, 0xEB, 0xF2]));

    // research station
    colors.insert('R', image::Rgb([0x95, 0x75, 0xCD]));

    // strange setting
    colors.insert('N', image::Rgb([0xF5, 0x00, 0x57]));
    colors.insert('C', image::Rgb([0xF5, 0x00, 0x57]));

    // ice
    colors.insert('i', image::Rgb([0xFF, 0xFF, 0xFF]));

    // mountains
    colors.insert('m', image::Rgb([0x26, 0x32, 0x38]));

    // foothills
    colors.insert('c', image::Rgb([0x68, 0x9F, 0x38]));
    colors.insert('f', image::Rgb([0x68, 0x9F, 0x38]));

    // plains
    colors.insert('p', image::Rgb([0xFF, 0xB7, 0x4D]));

    // void
    colors.insert('v', image::Rgb([0x00, 0x00, 0x00]));

    // water
    colors.insert('w', image::Rgb([0x01, 0x57, 0x9B]));

    // volcanic
    colors.insert('z', image::Rgb([0xDD, 0x2C, 0x00]));
    colors.insert('s', image::Rgb([0xBf, 0x36, 0x0C]));
    colors.insert('l', image::Rgb([0x79, 0x55, 0x48]));
    colors.insert('V', image::Rgb([0xDD, 0x2C, 0x00]));

    colors
}

pub fn generate(input_path: &str, output_path: &str) -> Result<()> {
    println!("Running grid-image...");
    let input_path = Path::new(input_path);
    let output_path = Path::new(output_path);

    let colors = palette();

    let maps =
        glob(input_path.join("**/*/map.txt").to_str().unwrap()).expect("Failed to read input path");

    let dir = fs::read_dir(output_path);
    if dir.is_err() {
        // it could be a different kind of error, so check existence better
        fs::create_dir(output_path)?;
    }

    for map in maps {
        match map {
            Ok(path) => {
                let output_path = output_filename(path.to_owned(), output_path.to_owned());

                println!("Generating map: {:?} -> {:?}", path.display(), &output_path,);

                let lines = super::read_lines(path)?;
                let lines: Vec<String> = lines.map(|l| l.unwrap()).collect();
                let mut img: image::RgbImage =
                    image::ImageBuffer::new(MAP_WIDTH, lines.len() as u32);

                for (y, line) in lines.iter().enumerate() {
                    let l = line;
                    let chars = l.chars();

                    for (x, char) in chars.enumerate() {
                        let color = colors.get(&char);
                        img.put_pixel(x as u32, y as u32, color.unwrap().to_owned());
                    }
                }

                img.save(&output_path).unwrap();
            }
            Err(e) => println!("Error finding map: {:?}", e),
        }
    }

    Ok(())
}

fn output_filename(map_path: PathBuf, output_path: PathBuf) -> String {
    format!(
        "{}/{}.png",
        output_path.to_str().unwrap(),
        map_path
            .parent()
            .unwrap()
            .iter()
            .last()
            .unwrap()
            .to_str()
            .unwrap()
    )
}
