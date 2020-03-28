use std::env;
mod euler2;

fn main() {
    let args: Vec<String> = env::args().collect();
    let file_name= &args[1];
    
    if file_name == "euler2.rs" {
        euler2::main();
    }
}
