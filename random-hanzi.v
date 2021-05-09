import rand { u32_in_range }

fn rand_hanzi() string {
	n := u32_in_range(0x4e00, 0x9fff + 1)
  return utf32_to_str(n)
}

fn rand_hanzi_array(n int) []string {
	mut res := []string{len: n}
	for i in 0 .. n {
		res[i] = rand_hanzi()
	}
	return res
}

println(rand_hanzi_array(8).join(' '))
