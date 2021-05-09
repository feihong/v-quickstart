const dict = map{
	'hello': '你好'
	'world': '世界'
	'goodbye': '再见'
	'universe': '宇宙'
}

fn translate(s string) string {
	return
		s.fields()
		.map(dict[it.to_lower()])
		.join('')
}

println(translate('Hello world'))
println(translate('Goodbye Universe'))
println(translate('Greetings CATERPILLAR'))
