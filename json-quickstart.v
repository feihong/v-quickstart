import json
import os
import math.big

struct Emoji {
	name string
}

text := os.read_file('emoji.json') or { panic('file not found') }
dict := json.decode(map[string]Emoji, text) or { panic('failed to decode json') }

mut count := 0
for k, emoji in dict {
	count += 1
	code := big.from_hex_string(k).int()
	s := utf32_to_str(u32(code))
	println('${emoji.name}: $s')
	if count > 10 {
		break
	}
}
