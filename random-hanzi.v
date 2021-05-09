import os
import rand
import strconv

const default_n = 8

fn rand_hanzi() string {
	n := rand.u32_in_range(0x4e00, 0x9fff + 1)
  return utf32_to_str(n)
}

fn rand_hanzi_array(n int) []string {
	mut res := []string{len: n}
	for i in 0 .. n {
		res[i] = rand_hanzi()
	}
	return res
}

s := os.args[1] or { '' }
n := strconv.atoi(s) or { default_n }

println(rand_hanzi_array(n).join(' '))
