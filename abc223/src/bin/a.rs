use proconio::{fastout, input};

#[fastout]
fn main() {
    input! {
        x: i32,
    };

    let answer: &str = if x % 100 == 0 && x > 0 {
        "Yes"
    } else {
        "No"
    };

    println!("{}", answer);
}
