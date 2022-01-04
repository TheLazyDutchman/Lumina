# Lumina
lumina is a programming hobby language


it is planned to be:
* [x] compiled
* [ ] turing complete
* [x] statically typed
* [ ] self hosted

## Arithmatic
Currently, Lumina supports the following arithmatic operations
* <int> + <int> -> <int>
* <char> + <int> -> <char>
* <int> + <char> -> <char>
* <int> - <int> -> <int>
* <char> - <int> -> <char>
* - <int> -> <int>

## Variables
Variables in Lumina are defined as such
'''Lumina
var a = 10; //a is now of type <int>, this means that a = 'c' should give an error
a = 20;

var b = 20;
var c = a == b;
var d = 'd';
'''

# Logic
Lumina supports the following controlflow
'''Lumina
var a = 10;
var b = 20;
if (a > b) {
	print('a');
}

var c = 'a';
while (c <= 'z') {
	print(c);
	c = c + 1;
}
'''

# Functions
Functions in Lumina should be used like this

'''Lumina
func HelloWorld() {//takes no arguments and return nothing
	print('H');
}
'''

'''Lumina
func max(int a, int b) -> int {//takes two integers as arguments, and returns an integer
	if (a > b) {
		return a;
	}

	return b;
}
'''
