import os
import strconv

const default_n = 100

fn fizzbuzz(n int) []string {
	mut res := []string{len: n}
	for i in 0 .. n {
		j := i + 1
		res[i] =
			if j % 15 == 0 {
				'FizzBuzz'
			} else if j % 3 == 0 {
				'Fizz'
			} else if j % 5 == 0 {
				'Buzz'
			} else {
				j.str()
			}
	}
	return res
}

s := os.args[1] or { '' }
n := strconv.atoi(s) or { default_n }

println(fizzbuzz(n))
