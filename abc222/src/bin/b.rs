use proconio::{input};

fn main() {
    input! {
        n: u32,
        p: u8,
        a: [u8; n]
    }

    
    let mut counter = 0;
    for i in &a {
        if i < &p {
            counter += 1;
        }
    }
    println!("{}", counter);
}
