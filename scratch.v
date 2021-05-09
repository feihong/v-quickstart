
arr := ['foo', 'bar']

s := match arr {
	['foo'] {
		'foo'
	}
	['foo', 'bar'] {
		'foo+bar'
	}
	else {
		'other'
	}
}
println(s)
