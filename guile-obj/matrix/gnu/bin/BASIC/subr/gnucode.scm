; #! /usr/local/bin/guile \
; -e main -s
; !#

; 4.3.2 The Meta Switch

; Guile’s  command-line  switches  allow   the  programmer  to  describe
; reasonably complicated  actions in  scripts. Unfortunately,  the POSIX
; script invocation mechanism only allows  one argument to appear on the
; ‘#!’  line  after  the  path  to the  Guile  executable,  and  imposes
; arbitrary limits on that argument’s length. Suppose you wrote a script
; starting like this:


; #!/usr/local/bin/guile -e main -s
; !#

(define (main args)
(map (lambda (arg) (display arg) (display " "))
(cdr args))
(newline))

; The intended  meaning is clear: load  the file, and then  call main on
; the command-line arguments. However,  the system will treat everything
; after the Guile path as a single  argument — the string "-e main -s" —
; which is not what we want.  As  a workaround, the meta switch \ allows
; the Guile programmer to specify an arbitrary number of options without
; patching the kernel.  If the first argument to Guile  is \, Guile will
; open  the  script file  whose  name  follows  the \,  parse  arguments
; starting from  the file’s  second line  (according to  rules described
; below), and substitute them for the \ switch.  Working in concert with
; the meta switch, Guile treats the  characters ‘#!’ as the beginning of
; a  comment which  extends through  the next  line containing  only the
; characters ‘!#’. This  sort of comment may appear anywhere  in a Guile
; program, but it is most useful at the top of a file, meshing magically
; with the POSIX  script invocation mechanism.  Thus,  consider a script
; named ‘/u/jimb/ekko’ which starts like this:

; #!/usr/local/bin/guile \
; -e main -s
; !#

; (define (main args)
; (map (lambda (arg) (display arg) (display " "))
; (cdr args))
; (newline))

; Suppose a user invokes this script as follows:
; $ /u/jimb/ekko a b c
; Here’s what happens:

;  the  operating system recognizes the  ‘#!’ token at the  top of the
; file, and rewrites the command line to:

; /usr/local/bin/guile \ /u/jimb/ekko a b c
; This is the usual behavior, prescribed by POSIX.

;  When Guile  sees the first two arguments, \  /u/jimb/ekko, it opens
; ‘/u/jimb/ekko’, parses the  three arguments -e, main, and  -s from it,
; and substitutes them for the \  switch. Thus, Guile’s command line now
; reads:

; /usr/local/bin/guile -e main -s /u/jimb/ekko a b c

;  Guile then  processes these switches: it loads  ‘/u/jimb/ekko’ as a
; file of Scheme code (treating the first three lines as a comment), and
; then performs the application (main "/u/jimb/ekko" "a" "b" "c").  When
; Guile sees the meta switch \, it parses command-line argument from the
; script file according to the  following rules:

;  Each space character
; terminates an argument. This means that  two spaces in a row introduce
; an argument  "".

; The  tab character  is not permitted  (unless you
; quote it with  the backslash character, as described  below), to avoid
; confusion.

;   The  newline  character terminates  the  sequence  of
; arguments,    and   will    also   terminate    a   final    non-empty
; argument. (However, a  newline following a space will  not introduce a
; final empty-string  argument; it  only terminates the  argument list.)

;   The  backslash  character  is the  escape  character.  It  escapes
; backslash, space, tab,  and newline. The ANSI C  escape sequences like
; \n and \t are also supported. These produce argument constituents; the
; two-character   combination  \n   doesn’t  act   like  a   terminating
; newline. The escape sequence \NNN for exactly three octal digits reads
; as  the  character whose  ASCII  code  is  NNN. As  above,  characters
; produced  this way  are argument  constituents. Backslash  followed by
; other characters is not allowed.

; 4.3.3 Command Line Handling

; The  ability to  accept  and  handle command  line  arguments is  very
; important  when writing  Guile scripts  to solve  particular problems,
; such as  extracting information  from text  files or  interfacing with
; existing command  line applications. This chapter  describes how Guile
; makes  command line  arguments available  to a  Guile script,  and the
; utilities that Guile  provides to help with the  processing of command
; line  arguments.  When  a Guile  script  is invoked,  Guile makes  the
; command  line arguments  accessible  via  the procedure  command-line,
; which returns the arguments as a list of strings.  For example, if the
; script

; #! /usr/local/bin/guile -s
                                        ; !#
; (write (command-line)) (newline)

; is saved  in a file  ‘cmdline-test.scm’ and invoked using  the command
;line ./cmdline- test.scm  bar.txt -o foo -frumple grob,  the output is

; ("./cmdline-test.scm" "bar.txt" "-o" "foo" "-frumple" "grob")

; Even when  a script is invoked  using this longer form,  the arguments
; that the script receives are the same  as if it had been invoked using
; the short form. Guile ensures  that the (command-line) or -e arguments
; are independent  of how the  script is  invoked, by stripping  off the
; arguments that Guile itself processes.  A  script is free to parse and
; handle its  command line arguments in  any way that it  chooses. Where
; the set of possible options and  arguments is complex, however, it can
; get tricky  to extract all  the options,  check the validity  of given
; arguments, and  so on. This task  can be greatly simplified  by taking
; advantage of the module (ice-9 getopt-long), which is distributed with
; Guile, See Section 7.4 [getopt-long], page 584.

; 4.3.4 Scripting Examples

; To  start with,  here are  some examples  of invoking  Guile directly:

guile --  a b  c

; Run Guile  interactively; (command-line)  will return
; ("/usr/local/bin/guile" "a" "b" "c").

guile -s /u/jimb/ex2 a b c Load

; the file ‘/u/jimb/ex2’;

(command-line)

; will return ("/u/jimb/ex2" "a" "b" "c").

guile -c ’(write  %load-path) (newline)’

; Write the value of

; the variable %load-path, print a newline,  and exit.

guile -e main -s

; /u/jimb/ex4  foo  Load  the  file ‘/u/jimb/ex4’,  and  then  call  the
; function main,  passing it  the list ("/u/jimb/ex4"  "foo").Chapter 4:
; Programming in Scheme 45

guile  -e ’(ex4)’ -s /u/jimb/ex4.scm foo Load

; the file ‘/u/jimb/ex4.scm’,  and then call the function  main from the
; module ’(ex4)’, passing  it the list ("/u/jimb/ex4"  "foo").
guile -l first -ds  -l last  -s script

; Load the  files ‘first’,  ‘script’, and ‘last’,

; in  that order.  The -ds  switch says when  to process  the -s
; switch. For a more motivated example,  see the scripts below.  Here is
; a  very simple  Guile  script:
; #!/usr/local/bin/guile  -s
; !#

(display "Hello, world!")  (newline)

