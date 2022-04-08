# Lumina
Lumina is a hobby programming language.

It is self-hosted and compiled, as well as statically typed.

[Quick Start](#quick-start)
[Variables](#variables)
[Types](#types)
[Importing](#importing)
[Functions](#functions)
[Syntax Highlighting](#syntax-highlighting)

## Support
Lumina can currently be compiled to:
* `linux x84_64`

The next goal for compile target will be `wasm`.
## Quick Start
```
$ git clone https://github.com/TheLazyDutchmen/Lumina.git MyDirectory
$ cd MyDirectory
$ ./lumina examples/helloWorld.lumina
$ ./examples/helloWorld
```
## Variables
To define a variable, lumina uses the `var` keyword.
```Lumina
var a = 10;
var b = 20;

var sum = a + b;
```

As you can see, variables do (currently) not use strong typing, however, Lumina does use static typing.

This means that you can not reassign values with different types.
```Lumina
var a = 10;
var a = 'a'; // this will give a compiler error
```

## Types
Lumina has the following built-in types:
|name|description|example|
|---|---|---|
|`int`|any signed integer|`15`|
|`char`|an ascii character|`'a'`|
|`str`|a list of characters|`"Hello, World!\n"`|
|`bool`|a boolean value|(there is currently no support for the `false` and `true` keywords|
|`ptr`|a pointer to memory, mainly used by some library functions, casting is required||
|`any`|any value, used as input to some library functions, no casting is required when going from a type to `any`, to go from an `any` value casting will be necessary||
|`null`|empty return type, used when a function does not return a value, should not be used for actual values||

These types are prone to change, as I do not like the amount of casting that is currently required.

### Casting
To go from one type to another, you sometimes need to cast a value
```Lumina
import "memory.lumina" // this file defines functions like: malloc, free, and realloc
// this should be a path to your local file, as imports do not use PATH yet.

// the malloc function returns a value of type `ptr`
var string = (str)malloc(25);

var buffer = (str)((int)string + 10); // this offsets the string by 10 bytes
```

Casting is currently unsafe, meaning there are no checks to determine wether it makes sense to go from one type to another. Any type can be cast to any other type.
### Defining custom Types
You can also define your own types, by using the `type` keyword.
```Lumina
import "memory.lumina"

type IntVector {
	int x;
	int y;
}

var vec = (IntVector)malloc(sizeof(IntVector));
vec.x = 10;
vec.y = 20;

var a = vec.x + vec.y;
```

these types behave mostly like c structs, with the following difference:
* Custom types and arrays are handled by reference, instead of by value. This means that you have to keep in mind that everything in Lumina is a pointer, whith the exception of immediate values like numbers, characters, and strings.
## Importing
To use code from another source file, Limuna uses the `import` keyword. Currently, paths are interpreted solely as though they are local to the file that imports them. This is whythe example files and test files use for example `import "../std/memory.lumina"`, rather than `import "memory.lumina"`.
## Functions
to define a function, Lumina uses the `func` keyword. To determine the output type, `->` can be used.
```Lumina
func max(int a, int b) -> int {
	if (a > b) {
		return a;
	}
	return b;
}
```
## Syntax HighLighting
files for syntax highlighting can be found in the [Editor Folder](/editor).
currently supported are:
- [x] vim
- [ ] emacs
- [ ] vscode

### Vim Setup
to setup syntax highlighting, copy the `lumina.vim` file to the location `~/.vim/syntax/lumina.vim`, and then add the following line to your `vimrc` file:
```vimrc
au BufRead,BufNewFile *.lumina set filetype=lumina
```
## Standard Library
The standard library is currently very prone to changes, therefore, it may take a while to create good documentation for it, if you want to see the functions that are defined currently, you can see them in the `std` directory. To use those functions, you will need to use `import` with a local path to the corresponding file in `std`.
