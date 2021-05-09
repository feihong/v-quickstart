import json
import os

struct Emoji {
	name string
}

text := os.read_file('emoji.json') or { panic('file not found') }

// println(text.substr(0, 10))

dict := json.decode(map[string]Emoji, text) or { panic('failed to decode json') }
println(dict['1f600'])
