; #! /usr/local/bin/guile \
; -e main -s
; !#

; If the script invocation includes  a -e option, specifying a procedure
; to call after loading the script,  Guile will call that procedure with
; (command-line) as its argument. So a  script that uses -e doesn’t need
; to  refer explicitly  to command-line  in its  code. For  example, the
; script above would have identical  behaviour if it was written instead
; like this:

(define (main args)
(write args)
(newline))

; (Note the use of  the meta switch \ so that  the script invocation can
; include  more than  one  Guile  option: See  Section  4.3.2 [The  Meta
; Switch], page 42.)  These scripts use  the #! POSIX convention so that
; they can  be executed using their  own file names directly,  as in the
; example  command  line  ./cmdline-test.scm  bar.txt  -o  foo  -frumple
; grob. But  they can also be  executed by typing out  the implied Guile
; command line in full, as in:

; $ guile -s ./cmdline-test.scm bar.txt -o foo -frumple grob
; or
; $ guile -e main -s ./cmdline-test2.scm bar.txt -o foo -frumple grob

