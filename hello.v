import encoding.utf8 { get_uchar }

const dict = map{
	'hello': '你好'
	'world': '世界'
	'goodbye': '再见'
	'universe': '宇宙'
}

fn translate(s string) string {
	return
		s.fields()
		.map(fn (s string) string {
			new_s := s.to_lower()
			return dict[new_s] or { new_s }
		})
		.join(' ')
}

println(translate('Hello world'))
println(translate('Goodbye Universe'))
println(translate('Greetings CATERPILLAR'))
