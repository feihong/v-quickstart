import encoding.utf8

const dict = map{
	'hello': '你好'
	'world': '世界'
	'goodbye': '再见'
	'universe': '宇宙'
}

fn ends_with_hanzi(s string) bool {
	us := s.ustring()
	last := us.at(us.len - 1)
	code := utf8.get_uchar(last, 0)
	// using match with range produces warning
	return if code >= 0x4e00 && code <= 0x9fff { true } else { false }
}

fn translate(s string) string {
	return
		s.fields()
		.map(fn (s string) string {
			mut new_s := s.to_lower()
			new_s = dict[new_s] or { new_s }
			if !ends_with_hanzi(new_s) {
				new_s = new_s + ' '
			}
			return new_s
		})
		.join('')
}

println(translate('Hello world'))
println(translate('Goodbye Universe'))
println(translate('Greetings CATERPILLAR'))
