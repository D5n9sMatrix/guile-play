;; boot.scm edit above file and this initial develop

; Edit the above file and:

                                        ;    Search for the line (define format simple-format), and below, add a line containing (define exception-format simple-format), so now your version of the file looks like this:

(define format simple-format)
(define exception-format simple-format)

; Replace all occurences of '(format ' using '(exception-format ' [note and meticulously respect the presence of the leading open paren ’(’ and the trailing space ’ ’ in both the search and replace expressions].

; Save the file.
; Compile the file - in the following lines, substitute /opt3 by your $prefix value, 3.0 by your guile (effective-version) as well as $HOME:


