# Feihong's V quickstart

## Prerequisites

Needed to use http package:

    brew install openssl

## Installation

Install from source (is surprisingly fast)

```
cd /usr/local/opt
git clone https://github.com/vlang/v
cd v
make
./v symlink  # creates symlink at /usr/local/bin/v
```

## Commands

Compile and run a program

    v run hello.v

Compile all files in a directory and execute `main` function

    v run .

## Links

- [Installing V from source](https://github.com/vlang/v#installing-v-from-source)
- [V docs](https://github.com/vlang/v/blob/master/doc/docs.md)
- [V standard library](https://modules.vlang.io/)
