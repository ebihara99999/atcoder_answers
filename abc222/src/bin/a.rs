use proconio::{fastout, input};

#[fastout]
fn main() {
    input! {
        x: i32,
    };

    if x / 1000 > 0 {
        println!("{}", &x);
    } else if x / 100 > 0 {
        println!("0{}", &x);
    } else if x / 10 > 0 {
        println!("00{}", &x);
    } else {
        println!("000{}", &x);
    };
}
