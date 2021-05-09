import rand

fn rand_hanzi() string {
	n := rand.u32_in_range(0x4e00, 0x9fff + 1)
  return utf32_to_str(n)
}

for _ in 0 .. 10 {
  print(rand_hanzi())
}
println('')
