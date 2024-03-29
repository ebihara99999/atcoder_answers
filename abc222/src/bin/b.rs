use proconio::{input};

fn main() {
    input! {
        n: u32,
        p: u8,
        a: [u8; n]
    }

    println!("{}", a.iter().filter(|&x| x < &p).count());
}
