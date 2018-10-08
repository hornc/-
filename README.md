# Ю⎔⎔

A complete compiler toolchain for the esolang [Юᓂ곧⎔](https://esolangs.org/wiki/%D0%AE%E1%93%82%EA%B3%A7%E2%8E%94), written in bash and sed. Requires [gcc](https://www.gnu.org/software/gcc/).

The computer programming language Юᓂ곧⎔  (pronounced similar to 'Unicode', but incorrectly) was proposed by David Madore in a [2004 blog post](http://www.madore.org/~david/weblog/d.2004-12-03.0813.html), by listing its syntax rules and providing a hello-world example program.

Ю⎔⎔, pronunced Yu-?-?, which is an acronym for "Юᓂ곧⎔ SOFTWARE-FUNCTION SOFTWARE-FUNCTIONER", is a functioning tool to compile code written in Юᓂ곧⎔. 
You can now compile and run the original Юᓂ곧⎔ example hello-world using this tool.

Not all the specified syntax rules are implemented yet in this early version. Writing further code in Юᓂ곧⎔ will most likely require expanding the language. 

Work is in progress on adding further support for the canonical syntax, and fleshing out further function names and practical details. Hopefully this small start will see an increase in the ammount of software written in Юᓂ곧⎔!

## Requirements
* bash
* sed
* gcc
* good unicode support (display & input)
* a particular sense of humour

## Name
The name of this tool is Ю⎔⎔ 

Github could not handle that, which is why the repo name is [-](https://github.com/hornc/-).
To avoid similar problems on local systems, the handy utility `uname` is included which outputs the tool's name.

    ./uname
    => Ю⎔⎔

`uname` has a verbose mode too. Option `-v`.
Don't confuse it with the system `uname`.

## Usage

To compile the included hello-world example:

    ./Ю⎔⎔  examples/hello-world.⎔ -o hello-world

OR (wimpmode)

    ./$(./uname) examples/hello-world.$(./uname|cut -c3) -o hello-world

Which will create an executable for your system named `hello-world`

You can run the complied executable as normal with

    ./hello-world

It actually compiles the code!


