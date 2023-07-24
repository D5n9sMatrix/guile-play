; 3.3.1.3 Evaluating a Procedure Invocation Expression

; This is where evaluation starts getting interesting! As already noted, a procedure invocation expression has the form

; (procedure [arg1 [arg2 …]])

; where procedure must be an expression whose value, when evaluated, is a procedure.

; The evaluation of a procedure invocation expression like this proceeds by

;    evaluating individually the expressions procedure, arg1, arg2, and so on
;    calling the procedure that is the value of the procedure expression with the list of values obtained from the evaluations of arg1, arg2 etc. as its parameters. 

; For a procedure defined in Scheme, “calling the procedure with the list of values as its parameters” means binding the values to the procedure’s formal parameters and then evaluating the sequence of expressions that make up the body of the procedure definition. The value of the procedure invocation expression is the value of the last evaluated expression in the procedure body. The side effects of calling the procedure are the combination of the side effects of the sequence of evaluations of expressions in the procedure body.

; For a built-in procedure, the value and side-effects of calling the procedure are best described by that procedure’s documentation.

; Note that the complete side effects of evaluating a procedure invocation expression consist not only of the side effects of the procedure call, but also of any side effects of the preceding evaluation of the expressions procedure, arg1, arg2, and so on.

; To illustrate this, let’s look again at the procedure invocation expression:

(string-length (string-append "/home" "/" "admin"))

; In the outermost expression, procedure is string-length and arg1 is (string-append "/home" "/" "admin").

;    Evaluation of string-length, which is a variable, gives a procedure value that implements the expected behaviour for “string-length”.
;    Evaluation of (string-append "/home" "/" "andrew"), which is another procedure invocation expression, means evaluating each of
;        string-append, which gives a procedure value that implements the expected behaviour for “string-append”
;        "/home", which gives the string value "/home"
;        "/", which gives the string value "/"
;        "admin", which gives the string value "admin" 

;    and then invoking the procedure value with this list of string values as its arguments. The resulting value is a single string value that is the concatenation of all the arguments, namely "/home/admin". 

; In the evaluation of the outermost expression, the interpreter can now invoke the procedure value obtained from procedure with the value obtained from arg1 as its arguments. The resulting value is a numeric value that is the length of the argument string, which is 12.
