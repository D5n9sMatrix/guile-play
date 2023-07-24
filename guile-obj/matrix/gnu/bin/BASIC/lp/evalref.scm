; 3.3.1.2 Evaluating a Variable Reference

; When an expression that consists simply of a variable name is evaluated, the value of the expression is the value of the named variable. The evaluation of a variable reference expression has no side effects.

; So, after

(define key "Cured Eval Ref")

; the value of the expression key is the string value "Paul Evans". If key is then modified by

(set! key 3.74)

; the value of the expression key is the numeric value 3.74.

; If there is no variable with the specified name, evaluation of the variable reference expression signals an error. 
