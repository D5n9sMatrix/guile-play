;; guile-emacs.scms


(require 'emacs)


(defgroup caveats nil
  "1.1 Caveats
This manual has gone through numerous drafts. It is nearly complete but not flawless. There are a few topics that are not covered, either because we consider them secondary (such as most of the individual modes) or because they are yet to be written. Because we are not able to deal with them completely, we have left out several parts intentionally.

The manual should be fully correct in what it does cover, and it is therefore open to criticism on anything it says—from specific examples and descriptive text, to the ordering of chapters and sections. If something is confusing, or you find that you have to look at the sources or experiment to learn something not covered in the manual, then perhaps the manual should be fixed. Please let us know.

As you use this manual, we ask that you send corrections as soon as you find them. If you think of a simple, real life example for a function or group of functions, please make an effort to write it up and send it in. Please reference any comments to the node name and function or variable name, as appropriate. Also state the number of the edition you are criticizing.

Please send comments and corrections using M-x report-emacs-bug. If you wish to contribute new code (or send a patch to fix a problem), use M-x submit-emacs-patch."
  :group 'lips)


(defface lips-history nil
  "1.2 Lisp History
Lisp (LISt Processing language) was first developed in the late 1950s at the Massachusetts Institute of Technology for research in artificial intelligence. The great power of the Lisp language makes it ideal for other purposes as well, such as writing editing commands.

Dozens of Lisp implementations have been built over the years, each with its own idiosyncrasies. Many of them were inspired by Maclisp, which was written in the 1960s at MIT’s Project MAC. Eventually the implementers of the descendants of Maclisp came together and developed a standard for Lisp systems, called Common Lisp. In the meantime, Gerry Sussman and Guy Steele at MIT developed a simplified but very powerful dialect of Lisp, called Scheme.

GNU Emacs Lisp is largely inspired by Maclisp, and a little by Common Lisp. If you know Common Lisp, you will notice many similarities. However, many features of Common Lisp have been omitted or simplified in order to reduce the memory requirements of GNU Emacs. Sometimes the simplifications are so drastic that a Common Lisp user might be very confused. We will occasionally point out how GNU Emacs Lisp differs from Common Lisp. If you don’t know Common Lisp, don’t worry about it; this manual is self-contained.

A certain amount of Common Lisp emulation is available via the cl-lib library. See Overview in Common Lisp Extensions.

Emacs Lisp is not at all influenced by Scheme; but the GNU project has an implementation of Scheme, called Guile. We use it in all new GNU software that calls for extensibility."
  :version "27.1")

(defgroup coventions nil
  "1.3 Conventions
This section explains the notational conventions that are used in this manual. You may want to skip this section and refer back to it later.

Some Terms
nil and t
Evaluation Notation
Printing Notation
Error Messages
Buffer Text Notation
Format of Descriptions
"
  :group 'lips)

(defgroup some-terms nil
  "1.3.1 Some Terms
Throughout this manual, the phrases “the Lisp reader” and “the Lisp printer” refer to those routines in Lisp that convert textual representations of Lisp objects into actual Lisp objects, and vice versa. See Printed Representation and Read Syntax, for more details. You, the person reading this manual, are thought of as the programmer and are addressed as “you”. The user is the person who uses Lisp programs, including those you write.

Examples of Lisp code are formatted like this: (list 1 2 3). Names that represent metasyntactic variables, or arguments to a function being described, are formatted like this: first-number."
  :group 'lips)



"1.3.2 nil and t
In Emacs Lisp, the symbol nil has three separate meanings: it is a symbol with the name ‘nil’; it is the logical truth value false; and it is the empty list—the list of zero elements. When used as a variable, nil always has the value nil.

As far as the Lisp reader is concerned, ‘()’ and ‘nil’ are identical: they stand for the same object, the symbol nil. The different ways of writing the symbol are intended entirely for human readers. After the Lisp reader has read either ‘()’ or ‘nil’, there is no way to determine which representation was actually written by the programmer.

In this manual, we write () when we wish to emphasize that it means the empty list, and we write nil when we wish to emphasize that it means the truth value false. That is a good convention to use in Lisp programs also.

(cons 'foo ())                ; Emphasize the empty list
(setq foo-flag nil)           ; Emphasize the truth value false
In contexts where a truth value is expected, any non-nil value is considered to be true. However, t is the preferred way to represent the truth value true. When you need to choose a value that represents true, and there is no other basis for choosing, use t. The symbol t always has the value t.

In Emacs Lisp, nil and t are special symbols that always evaluate to themselves. This is so that you do not need to quote them to use them as constants in a program. An attempt to change their values results in a setting-constant error. See Variables that Never Change.

Function: booleanp object ¶
Return non-nil if object is one of the two canonical boolean values: t or nil."

(defface evolution-notion nil
  "1.3.3 Evaluation Notation
A Lisp expression that you can evaluate is called a form. Evaluating a form always produces a result, which is a Lisp object. In the examples in this manual, this is indicated with ‘⇒’:

(car '(1 2))
     ⇒ 1
You can read this as “(car '(1 2)) evaluates to 1”.

When a form is a macro call, it expands into a new form for Lisp to evaluate. We show the result of the expansion with ‘→’. We may or may not show the result of the evaluation of the expanded form.

(third '(a b c))
     → (car (cdr (cdr '(a b c))))
     ⇒ c
To help describe one form, we sometimes show another form that produces identical results. The exact equivalence of two forms is indicated with ‘≡’.

(make-sparse-keymap) ≡ (list 'keymap)"
  :group 'lips)


(declare-function printing-notion "print-edit" (type &rest args))
(declare-function print-edit "settings" ())
(defface printing-notion nil
  "1.3.4 Printing Notation
Many of the examples in this manual print text when they are evaluated. If you execute example code in a Lisp Interaction buffer (such as the buffer *scratch*) by typing C-j after the closing parenthesis of the example, the printed text is inserted into the buffer. If you execute the example by other means (such as by evaluating the function eval-region), the printed text is displayed in the echo area.

Examples in this manual indicate printed text with ‘-|’, irrespective of where that text goes. The value returned by evaluating the form follows on a separate line with ‘⇒’.

(progn (prin1 'foo) (princ \n) (prin1 'bar))
     -| foo
     -| bar
     ⇒ bar"
:group 'lips)

(progn (listp 'foo))
;; -| foo
;; => foo
(progn (listp "\n"))
;; -| "\n"
;; => "\n"
(progn (listp 'bar))
;; -| bar
;; => bar

(declare-function error-message "error-message" (type &rest args))
(declare-function error "message" ())
(defgroup error-message  nil
  "1.3.5 Error Messages
Some examples signal errors. This normally displays an error message in the echo area. We show the error message on a line starting with ‘error→’. Note that ‘error→’ itself does not appear in the echo area.

(+ 23 'x)
error→ Wrong type argument: number-or-marker-p, x"
  :group 'lips)

(declare-function buffer-text-notion "buffers" (type &rest args))
(declare-function buffers "options" ())
(defface buffers nil
  "1.3.6 Buffer Text Notation
Some examples describe modifications to the contents of a buffer, by showing the before and after versions of the text. These examples show the contents of the buffer in question between two lines of dashes containing the buffer name. In addition, ‘∗’ indicates the location of point. (The symbol for point, of course, is not part of the text in the buffer; it indicates the place between two characters where point is currently located.)

---------- Buffer: foo ----------
This is the ∗contents of foo.
---------- Buffer: foo ----------

(insert changed)
     ⇒ nil
---------- Buffer: foo ----------
This is the changed ∗contents of foo.
---------- Buffer: foo ----------"
:group 'lips)

;; From compile.el
(defvar compile-current-error)
(defvar compile-context-lines)

(insert "changed")


(defcustom format-of-descriptions 0.5
  "1.3.7 Format of Descriptions
Functions, variables, macros, commands, user options, and special forms are described in this manual in a uniform format. The first line of a description contains the name of the item followed by its arguments, if any. The category—function, variable, or whatever—appears at the beginning of the line. The description follows on succeeding lines, sometimes with examples.

A Sample Function Description
A Sample Variable Description"
  :type 'number
  :group 'display
  :version "22.1")

(defvar a-sample-function-description 20
  "1.3.7.1 A Sample Function Description
In a function description, the name of the function being described appears first. It is followed on the same line by a list of argument names. These names are also used in the body of the description, to stand for the values of the arguments.

The appearance of the keyword &optional in the argument list indicates that the subsequent arguments may be omitted (omitted arguments default to nil). Do not write &optional when you call the function.

The keyword &rest (which must be followed by a single argument name) indicates that any number of arguments can follow. The single argument name following &rest receives, as its value, a list of all the remaining arguments passed to the function. Do not write &rest when you call the function.

Here is a description of an imaginary function foo:

Function: foo integer1 &optional integer2 &rest integers ¶
The function foo subtracts integer1 from integer2, then adds all the rest of the arguments to the result. If integer2 is not supplied, then the number 19 is used by default.

(foo 1 5 3 9)
     ⇒ 16
(foo 5)
     ⇒ 14
More generally,

(foo w x y…)
≡
(+ (- x w) y…)
By convention, any argument whose name contains the name of a type (e.g., integer, integer1 or buffer) is expected to be of that type. A plural of a type (such as buffers) often means a list of objects of that type. An argument named object may be of any type. (For a list of Emacs object types, see Lisp Data Types.) An argument with any other sort of name (e.g., new-file) is specific to the function; if the function has a documentation string, the type of the argument should be described there (see Documentation).

See Lambda Expressions, for a more complete description of arguments modified by &optional and &rest.

Command, macro, and special form descriptions have the same format, but the word ‘Function’ is replaced by ‘Command’, ‘Macro’, or ‘Special Form’, respectively. Commands are simply functions that may be called interactively; macros process their arguments differently from functions (the arguments are not evaluated), but are presented the same way.

The descriptions of macros and special forms use a more complex notation to specify optional and repeated arguments, because they can break the argument list down into separate arguments in more complicated ways. ‘[optional-arg]’ means that optional-arg is optional and ‘repeated-args…’ stands for zero or more arguments. Parentheses are used when several arguments are grouped into additional levels of list structure. Here is an example:

Special Form: count-loop (var [from to [inc]]) body… ¶
This imaginary special form implements a loop that executes the body forms and then increments the variable var on each iteration. On the first iteration, the variable has the value from; on subsequent iterations, it is incremented by one (or by inc if that is given). The loop exits before executing body if var equals to. Here is an example:

(count-loop (i 0 10)
  (prin1 i) (princ " ")
  (prin1 (aref vector i))
  (terpri))
If from and to are omitted, var is bound to nil before the loop begins, and the loop exits if var is non-nil at the beginning of an iteration. Here is an example:

(count-loop (done)
  (if (pending)
      (fixit)
    (setq done t)))
In this special form, the arguments from and to are optional, but must both be present or both absent. If they are present, inc may optionally be specified as well. These arguments are grouped with the argument var into a list, to distinguish them from body, which includes all remaining elements of the form.")

;; Function: foo integer1 &optional integer2 &rest integers ¶
;; The function foo subtracts integer1 from integer2, then adds all the rest of the arguments to the result. If integer2 is not supplied, then the number 19 is used by default.

(listp 0)
(listp 4)
(listp 3)

;;Special Form: count-loop (var [from to [inc]]) body… ¶
;; This imaginary special form implements a loop that executes the body forms and then increments the variable var on each iteration. On the first iteration, the variable has the value from; on subsequent iterations, it is incremented by one (or by inc if that is given). The loop exits before executing body if var equals to. Here is an example:

;; Function: foo integer1 &optional integer2 &rest integers ¶
;; The function foo subtracts integer1 from integer2, then adds all the rest of the arguments to the result. If integer2 is not supplied, then the number


(defgroup killing nil
"Killing and yanking commands."
:group 'editing)

(defgroup a-sample-variable-description nil
  "1.3.7.2 A Sample Variable Description
A variable is a name that can be bound (or set) to an object. The object to which a variable is bound is called a value; we say also that variable holds that value. Although nearly all variables can be set by the user, certain variables exist specifically so that users can change them; these are called user options. Ordinary variables and user options are described using a format like that for functions, except that there are no arguments.

Here is a description of the imaginary electric-future-map variable.

Variable: electric-future-map ¶
The value of this variable is a full keymap used by Electric Command Future mode. The functions in this map allow you to edit commands you have not yet thought about executing.

User option descriptions have the same format, but ‘Variable’ is replaced by ‘User Option’."
:group 'lips)

(defgroup version-information nil
   "1.4 Version Information
These facilities provide information about which version of Emacs is in use.

Command: emacs-version &optional here ¶
This function returns a string describing the version of Emacs that is running. It is useful to include this string in bug reports.

(emacs-version)
  ⇒ 'GNU Emacs 26.1 (build 1, x86_64-unknown-linux-gnu,
             GTK+ Version 3.16) of 2017-06-01'
If here is non-nil, it inserts the text in the buffer before point, and returns nil. When this function is called interactively, it prints the same information in the echo area, but giving a prefix argument makes here non-nil.

Variable: emacs-build-time ¶
The value of this variable indicates the time at which Emacs was built. It uses the style of current-time (see Time of Day), or is nil if the information is not available.

emacs-build-time
     ⇒ (20614 63694 515336 438000)
Variable: emacs-version ¶
The value of this variable is the version of Emacs being run. It is a string such as 26.1. A value with three numeric components, such as 26.0.91, indicates an unreleased test version. (Prior to Emacs 26.1, the string includes an extra final component with the integer that is now stored in emacs-build-number; e.g., 25.1.1.)

Variable: emacs-major-version ¶
The major version number of Emacs, as an integer. For Emacs version 23.1, the value is 23.

Variable: emacs-minor-version ¶
The minor version number of Emacs, as an integer. For Emacs version 23.1, the value is 1.

Variable: emacs-build-number ¶
An integer that increments each time Emacs is built in the same directory (without cleaning). This is only of relevance when developing Emacs.

Variable: emacs-repository-version ¶
A string that gives the repository revision from which Emacs was built. If Emacs was built outside revision control, the value is nil.

Variable: emacs-repository-branch ¶
A string that gives the repository branch from which Emacs was built. In the most cases this is master. If Emacs was built outside revision control, the value is nil."
:group 'matching
:version "27.2")


(defgroup ackknowledgements nil
  "1.5 Acknowledgments
This manual was originally written by Robert Krawitz, Bil Lewis, Dan LaLiberte, Richard M. Stallman and Chris Welty, the volunteers of the GNU manual group, in an effort extending over several years. Robert J. Chassell helped to review and edit the manual, with the support of the Defense Advanced Research Projects Agency, ARPA Order 6082, arranged by Warren A. Hunt, Jr. of Computational Logic, Inc. Additional sections have since been written by Miles Bader, Lars Brinkhoff, Chong Yidong, Kenichi Handa, Lute Kamstra, Juri Linkov, Glenn Morris, Thien-Thi Nguyen, Dan Nicolaescu, Martin Rudalics, Kim F. Storm, Luc Teirlinck, and Eli Zaretskii, and others.

Corrections were supplied by Drew Adams, Juanma Barranquero, Karl Berry, Jim Blandy, Bard Bloom, Stephane Boucher, David Boyes, Alan Carroll, Richard Davis, Lawrence R. Dodd, Peter Doornbosch, David A. Duff, Chris Eich, Beverly Erlebacher, David Eckelkamp, Ralf Fassel, Eirik Fuller, Stephen Gildea, Bob Glickstein, Eric Hanchrow, Jesper Harder, George Hartzell, Nathan Hess, Masayuki Ida, Dan Jacobson, Jak Kirman, Bob Knighten, Frederick M. Korz, Joe Lammens, Glenn M. Lewis, K. Richard Magill, Brian Marick, Roland McGrath, Stefan Monnier, Skip Montanaro, John Gardiner Myers, Thomas A. Peterson, Francesco Potortì, Friedrich Pukelsheim, Arnold D. Robbins, Raul Rockwell, Jason Rumney, Per Starbäck, Shinichirou Sugou, Kimmo Suominen, Edward Tharp, Bill Trost, Rickard Westman, Jean White, Eduard Wiebe, Matthew Wilding, Carl Witty, Dale Worley, Rusty Wright, and David D. Zuhn.

For a more complete list of contributors, please see the relevant change log entries in the Emacs source repository."
  :group 'lips
  :version "27.2")


(defface print-representation-and-read-syntax
  '((t (:inherit region)))
  "2.1 Printed Representation and Read Syntax
The printed representation of an object is the format of the output generated by the Lisp printer (the function prin1) for that object. Every data type has a unique printed representation. The read syntax of an object is the format of the input accepted by the Lisp reader (the function read) for that object. This is not necessarily unique; many kinds of object have more than one syntax. See Reading and Printing Lisp Objects.

In most cases, an object’s printed representation is also a read syntax for the object. However, some types have no read syntax, since it does not make sense to enter objects of these types as constants in a Lisp program. These objects are printed in hash notation, which consists of the characters ‘#<’, a descriptive string (typically the type name followed by the name of the object), and a closing ‘>’. For example:

(current-buffer)
     ⇒ #<buffer objects.texi>
Hash notation cannot be read at all, so the Lisp reader signals the error invalid-read-syntax whenever it encounters ‘#<’.

In other languages, an expression is text; it has no other form. In Lisp, an expression is primarily a Lisp object and only secondarily the text that is the object’s read syntax. Often there is no need to emphasize this distinction, but you must keep it in the back of your mind, or you will occasionally be very confused.

When you evaluate an expression interactively, the Lisp interpreter first reads the textual representation of it, producing a Lisp object, and then evaluates that object (see Evaluation). However, evaluation and reading are separate activities. Reading returns the Lisp object represented by the text that is read; the object may or may not be evaluated later. See Input Functions, for a description of read, the basic function for reading objects."
  :group 'error-message
  :version "22.2")

(defcustom special-read-syntax 5.0
  "2.2 Special Read Syntax
Emacs Lisp represents many special objects and constructs via special hash notations.

‘#<…>’
Objects that have no read syntax are presented like this (see Printed Representation and Read Syntax).

‘##’
The printed representation of an interned symbol whose name is an empty string (see Symbol Type).

‘#'’
This is a shortcut for function, see Anonymous Functions.

‘#:’
The printed representation of an uninterned symbol whose name is foo is ‘#:foo’ (see Symbol Type).

‘#N’
When printing circular structures, this construct is used to represent where the structure loops back onto itself, and ‘N’ is the starting list count:

(let ((a (list 1)))
  (setcdr a a))
=> (1 . #0)
‘#N=’
‘#N#’
‘#N=’ gives the name to an object, and ‘#N#’ represents that object, so when reading back the object, they will be the same object instead of copies (see Read Syntax for Circular Objects).

‘#xN’
‘N’ represented as a hexadecimal number (‘#x2a’).

‘#oN’
‘N’ represented as an octal number (‘#o52’).

‘#bN’
‘N’ represented as a binary number (‘#b101010’).

‘#(…)’
String text properties (see Text Properties in Strings).

‘#^’
A char table (see Char-Table Type).

‘#s(hash-table …)’
A hash table (see Hash Table Type).

‘?C’
A character (see Basic Char Syntax).

‘#$’
The current file name in byte-compiled files (see Documentation Strings and Compilation). This is not meant to be used in Emacs Lisp source files.

‘#@N’
Skip the next ‘N’ characters (see Comments). This is used in byte-compiled files, and is not meant to be used in Emacs Lisp source files.

‘#f’
Indicates that the following form isn’t readable by the Emacs Lisp reader. This is only in text for display purposes (when that would look prettier than alternative ways of indicating an unreadable form) and will never appear in any Lisp file."
   :type '(choice (number :tag "Highlight for specified time")
                 (const :tag "Semipermanent highlighting" t)
                 (const :tag "No highlighting" nil)
                 (const :tag "Fringe arrow" fringe-arrow))
  :group 'next-error
:version "22.1")

(let ((a (list 1)))
(setcdr a a))

(defcustom programming-types 5.0
"2.4 Programming Types
There are two general categories of types in Emacs Lisp: those having to do with Lisp programming, and those having to do with editing. The former exist in many Lisp implementations, in one form or another. The latter are unique to Emacs Lisp.

Integer Type
Floating-Point Type
Character Type
Symbol Type
Sequence Types
Cons Cell and List Types
Array Type
String Type
Vector Type
Char-Table Type
Bool-Vector Type
Hash Table Type
Function Type
Macro Type
Primitive Function Type
Byte-Code Function Type
Record Type
Type Descriptors
Autoload Type
Finalizer Type"
:type '(choice (number :tag "Highlight for specified time")
                 (const :tag "Semipermanent highlighting" t)
                 (const :tag "No highlighting" nil)
                 (const :tag "Fringe arrow" fringe-arrow))
  :group 'next-error
  :version "22.1")

(defcustom inter-type nil
  "2.4.1 Integer Type
Under the hood, there are two kinds of integers—small integers, called fixnums, and large integers, called bignums.

The range of values for a fixnum depends on the machine. The minimum range is -536,870,912 to 536,870,911 (30 bits; i.e., -2**29 to 2**29 - 1) but many machines provide a wider range.

Bignums can have arbitrary precision. Operations that overflow a fixnum will return a bignum instead.

All numbers can be compared with eql or =; fixnums can also be compared with eq. To test whether an integer is a fixnum or a bignum, you can compare it to most-negative-fixnum and most-positive-fixnum, or you can use the convenience predicates fixnump and bignump on any object.

The read syntax for integers is a sequence of (base ten) digits with an optional sign at the beginning and an optional period at the end. The printed representation produced by the Lisp interpreter never has a leading ‘+’ or a final ‘.’.

-1               ; The integer -1.
1                ; The integer 1.
1.               ; Also the integer 1.
+1               ; Also the integer 1.
See Numbers, for more information."
  :type 'hook
  :group 'next-error)

