# QUESTIONS

How to get an array of runes?

```v
import encoding.utf8 { get_uchar }

s := '你好'
println('byte length: ${s.len}')
println('unicode length: ${utf8_str_len(s)}')

println(get_uchar(s, 0))
println(get_uchar(s, 1))
println(get_uchar(s, 3))

println(utf32_to_str(get_uchar(s, 0)))
println(utf32_to_str(get_uchar(s, 1)))
println(utf32_to_str(get_uchar(s, 3)))
```

Does pattern-matching on arrays work? No

```v
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
```

```
scratch.v:5:3: error: unexpected string `foo`, expecting `]`
    3 |
    4 | s := match arr {
    5 |     ['foo'] {
      |      ~~~~~
    6 |         'foo'
    7 |     }
```
