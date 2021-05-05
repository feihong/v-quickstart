import rand

println('你好世界！')

for i := 0; i < 10; i++ {
  n := rand.u32_in_range(0x4e00, 0x9fff + 1)
  c := utf32_to_str(n)
  println(c)
}
