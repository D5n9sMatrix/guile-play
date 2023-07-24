; 3.3 Expressions and Evaluation

; So far, we have met expressions that do things, such as the define expressions that create and initialize new variables, and we have also talked about expressions that have values, for example the value of the procedure invocation expression:

(string-append "/home" "/" "admin")

; but we haven’t yet been precise about what causes an expression like this procedure invocation to be reduced to its “value”, or how the processing of such expressions relates to the execution of a Scheme program as a whole.

; This section clarifies what we mean by an expression’s value, by introducing the idea of evaluation. It discusses the side effects that evaluation can have, explains how each of the various types of Scheme expression is evaluated, and describes the behaviour and use of the Guile REPL as a mechanism for exploring evaluation. The section concludes with a very brief summary of Scheme’s common syntactic expressions.

;     Evaluating Expressions and Executing Programs
;     Tail calls
;     Using the Guile REPL
;     Summary of Common Syntax
