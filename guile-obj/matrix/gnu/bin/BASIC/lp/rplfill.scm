; 3.3.3 Using the Guile REPL

; If you start Guile without specifying a particular program for it to execute, Guile enters its standard Read Evaluate Print Loop — or REPL for short. In this mode, Guile repeatedly reads in the next Scheme expression that the user types, evaluates it, and prints the resulting value.

; The REPL is a useful mechanism for exploring the evaluation behaviour described in the previous subsection. If you type string-append, for example, the REPL replies #<primitive-procedure string-append>, illustrating the relationship between the variable string-append and the procedure value stored in that variable.

; In this manual, the notation ⇒ is used to mean “evaluates to”. Wherever you see an example of the form

; expression
; ⇒
; result

; feel free to try it out yourself by typing expression into the REPL and checking that it gives the expected result.

