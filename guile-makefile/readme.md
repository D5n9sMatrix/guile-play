# welcome guile makefile snippet proof PELANCAR PERL AND SCHEMES script 

**12.1 GNU Guile Integration**

GNU make may be built with support for GNU Guile as an embedded extension language. Guile implements the Scheme language. A review of GNU Guile and the Scheme language and its features is beyond the scope of this manual: see the documentation for GNU Guile and Scheme.

You can determine if make contains support for Guile by examining the .FEATURES variable; it will contain the word guile if Guile support is available.

The Guile integration provides one new make function: guile. The guile function takes one argument which is first expanded by make in the normal fashion, then passed to the GNU Guile evaluator. The result of the evaluator is converted into a string and used as the expansion of the guile function in the makefile.

In addition, GNU make exposes Guile procedures for use in Guile scripts.

    Conversion of Guile Types
    Interfaces from Guile to make
    Example Using Guile in make

**12.1.1 Conversion of Guile Types**

There is only one “data type” in make: a string. GNU Guile, on the other hand, provides a rich variety of different data types. An important aspect of the interface between make and GNU Guile is the conversion of Guile data types into make strings.

This conversion is relevant in two places: when a makefile invokes the guile function to evaluate a Guile expression, the result of that evaluation must be converted into a make string so it can be further evaluated by make. And secondly, when a Guile script invokes one of the procedures exported by make the argument provided to the procedure must be converted into a string.

The conversion of Guile types into make strings is as below:

#f

    False is converted into the empty string: in make conditionals the empty string is considered false.
#t

    True is converted to the string ‘#t’: in make conditionals any non-empty string is considered true.
symbol
number

    A symbol or number is converted into the string representation of that symbol or number.
character

    A printable character is converted to the same character.
string

    A string containing only printable characters is converted to the same string.
list

    A list is converted recursively according to the above rules. This implies that any structured list will be flattened (that is, a result of ‘'(a b (c d) e)’ will be converted to the make string ‘a b c d e’).
other

    Any other Guile type results in an error. In future versions of make, other Guile types may be converted.

The translation of ‘#f’ (to the empty string) and ‘#t’ (to the non-empty string ‘#t’) is designed to allow you to use Guile boolean results directly as make boolean conditions. For example:

```
$(if $(guile (access? "myfile" R_OK)),$(info myfile exists))
```

As a consequence of these conversion rules you must consider the result of your Guile script, as that result will be converted into a string and parsed by make. If there is no natural result for the script (that is, the script exists solely for its side-effects), you should add ‘#f’ as the final expression in order to avoid syntax errors in your makefile. 

**12.1.2 Interfaces from Guile to make**

In addition to the guile function available in makefiles, make exposes some procedures for use in your Guile scripts. At startup make creates a new Guile module, gnu make, and exports these procedures as public interfaces from that module:

gmk-expand

    This procedure takes a single argument which is converted into a string. The string is expanded by make using normal make expansion rules. The result of the expansion is converted into a Guile string and provided as the result of the procedure.
gmk-eval

    This procedure takes a single argument which is converted into a string. The string is evaluated by make as if it were a makefile. This is the same capability available via the eval function (see The eval Function). The result of the gmk-eval procedure is always the empty string.

    Note that gmk-eval is not quite the same as using gmk-expand with the eval function: in the latter case the evaluated string will be expanded twice; first by gmk-expand, then again by the eval function.

**12.1.3 Example Using Guile in make**

Here is a very simple example using GNU Guile to manage writing to a file. These Guile procedures simply open a file, allow writing to the file (one string per line), and close the file. Note that because we cannot store complex values such as Guile ports in make variables, we’ll keep the port as a global variable in the Guile interpreter.

You can create Guile functions easily using define/endef to create a Guile script, then use the guile function to internalize it:

define GUILEIO
;; A simple Guile IO library for GNU Make
```
(define MKPORT #f)

(define (mkopen name mode)
  (set! MKPORT (open-file name mode))
  #f)

(define (mkwrite s)
  (display s MKPORT)
  (newline MKPORT)
  #f)

(define (mkclose)
  (close-port MKPORT)
  #f)

#f
endef
```
# Internalize the Guile IO functions
``` 
$(guile $(GUILEIO))
```
If you have a significant amount of Guile support code, you might consider keeping it in a different file (e.g., guileio.scm) and then loading it in your makefile using the guile function:

$(guile (load "guileio.scm"))

An advantage to this method is that when editing guileio.scm, your editor will understand that this file contains Scheme syntax rather than makefile syntax.

Now you can use these Guile functions to create files. Suppose you need to operate on a very large list, which cannot fit on the command line, but the utility you’re using accepts the list as input as well:

```
prog: $(PREREQS)
        @$(guile (mkopen "tmp.out" "w")) \
         $(foreach X,$^,$(guile (mkwrite "$(X)"))) \
         $(guile (mkclose))
        $(LINK) < tmp.out
```
A more comprehensive suite of file manipulation procedures is possible of course. You could, for example, maintain multiple output files at the same time by choosing a symbol for each one and using it as the key to a hash table, where the value is a port, then returning the symbol to be stored in a make variable. <br><br>

LICENSE

MIT MIcrosoft
