use std::process;
use proconio::input;

fn main() {
    input! {
        n: String,
        m: String
    }

    if n == m {
        println!("Yes");
        process::exit(0);
    }

    let mut n_vec = n.chars().collect::<Vec<char>>();
    let m_vec = m.chars().collect::<Vec<char>>();

    for i in 0..n.len()-1 as usize {
        n_vec.swap(i, i+1);
        if n_vec == m_vec {
            println!("Yes");
            process::exit(0);
        }
        n_vec.swap(i, i+1);
    }
    println!("No");
}
