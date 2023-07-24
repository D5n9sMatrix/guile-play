;; ice-9.scm  solution choose, add the following test lines

; Configuring Guile’s repl-print procedure

; Guile’s repl-print procedure calls (write val), which is inadequate for Guile-CV images - or for that matter, for any work that involves very large data structure manipulations - even very small images4. Fortunately, Guile provides both a simple mechanism to alter the default repl printer and the alternate repl printer procedure we need: truncated-print.

; To modify the default repl printer, you may alter (or add if it doesn’t exist) your $HOME/.guile file or, if you are working in a multi-user environmet, you may alther (or add if it doesn’t exist) the file named init.scm in the Guile global site directory5..

Which ever solution you choose, add the following lines:

(use-modules (ice-9 pretty-print)
             (system repl common))
(repl-default-option-set! 'print
                          (lambda (repl obj)
                            (truncated-print obj) (newline)))

; Configuring Guile’s raised exception system

; Guile’s core raised exception printers call simple-format, which is inadequate for Guile-CV images - or for that matter, for any work that involves very large data structure manipulations - even very small images (see the related footnote of the previous section, it explains how ‘inadequate’ this default is for Guile-CV images).

; Unfortunately, Guile does not provide an easy mechanism to alter its core raised exception printers. This leaves us with no other option but making some changes to the module where those are defined, namely the (ice-9 boot-9) Guile’s core module, which then needs to be (re)compiled and (re)installed6.

; As the (ice-9 boot-9) Guile’s core module has changed from 2.0, 2.2 to 3.0, and still is subject to change any time in the future, we can’t provide a ‘one patch for all’ solution.

; Instead, we describe the steps to manually update your local version. However if you think it is ‘too much’ for you, get in touch with us, and we will guide you or provide a ‘ready to use module’, depending on your version of Guile.

; So, let’s first figure out where the (ice-9 boot-9) resides on your system7, in a guile session, enter the following:

(string-append (%package-data-dir) "/" (effective-version))

; The above returned value is an example of course, just proceed with the value returned by your system. So, the file we need to edit, in our example, is here:

; /opt3/share/guile/3.0/ice-9/boot-9.scm
