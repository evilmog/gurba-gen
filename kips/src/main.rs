use std::{
    fs,
    io::{self, BufRead},
    path::Path,
};

use clap::{arg, Command};
use color_eyre::eyre::Result;

mod levelparse;
mod mapgen;

fn cli() -> Command<'static> {
    Command::new("kips")
        .about("Mudkips is a CLI for Muds!")
        .subcommand_required(true)
        .arg_required_else_help(true)
        .allow_external_subcommands(true)
        .allow_invalid_utf8_for_external_subcommands(true)
        .subcommand(
            Command::new("levelparse")
                .about("Parses .level files into a list of mud room coordinates and exits")
                .arg(arg!(<LEVELS_PATH> "The directory containing level files"))
                .arg_required_else_help(true),
        )
        .subcommand(
            Command::new("mapgen")
                .about(
                    "Generates an image file for a given set of text files and character mappings",
                )
                .arg(arg!(<INPUT_PATH> "The directory to recursively read map.txt files from"))
                .arg(arg!(<OUTPUT_PATH> "The directory to output images to"))
                .arg_required_else_help(true),
        )
}
fn main() -> Result<()> {
    color_eyre::install()?;

    let matches = cli().get_matches();

    match matches.subcommand() {
        Some(("levelparse", sub_matches)) => {
            let path = sub_matches
                .get_one::<String>("LEVELS_PATH")
                .expect("required");

            levelparse::parse(&path).unwrap();
        }
        Some(("mapgen", sub_matches)) => {
            let input_path = sub_matches
                .get_one::<String>("INPUT_PATH")
                .expect("required");

            let output_path = sub_matches
                .get_one::<String>("OUTPUT_PATH")
                .expect("required");

            mapgen::gen(&input_path, &output_path).unwrap();
        }
        _ => unreachable!(), // If all subcommands are defined above, anything else is unreachabe!()
    }

    Ok(())
}

fn read_lines<P>(filename: P) -> io::Result<io::Lines<io::BufReader<fs::File>>>
where
    P: AsRef<Path>,
{
    let file = fs::File::open(filename)?;
    Ok(io::BufReader::new(file).lines())
}
