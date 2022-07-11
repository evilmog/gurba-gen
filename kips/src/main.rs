use clap::{arg, Command};

mod levels;

fn cli() -> Command<'static> {
    Command::new("kips")
        .about("Mudkips is a CLI for Muds!")
        .subcommand_required(true)
        .arg_required_else_help(true)
        .allow_external_subcommands(true)
        .allow_invalid_utf8_for_external_subcommands(true)
        .subcommand(
            Command::new("parse-levels")
                .about("Parses .level files into a list of mud room coordinates and exits")
                .arg(arg!(<LEVELS_PATH> "The directory containing level files"))
                .arg_required_else_help(true),
        )
}
fn main() {
    let matches = cli().get_matches();

    match matches.subcommand() {
        Some(("parse-levels", sub_matches)) => {
            let path = sub_matches
                .get_one::<String>("LEVELS_PATH")
                .expect("required");
            levels::parse_levels(&path).unwrap();
        }
        _ => unreachable!(), // If all subcommands are defined above, anything else is unreachabe!()
    }
}
