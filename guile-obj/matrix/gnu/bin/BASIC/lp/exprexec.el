; 3.3.1 Evaluating Expressions and Executing Programs

; In Scheme, the process of executing an expression is known as evaluation. Evaluation has two kinds of result:

;    the value of the evaluated expression
;    the side effects of the evaluation, which consist of any effects of evaluating the expression that are not represented by the value. 

; Of the expressions that we have met so far, define and set! expressions have side effects — the creation or modification of a variable — but no value; lambda expressions have values — the newly constructed procedures — but no side effects; and procedure invocation expressions, in general, have either values, or side effects, or both.

; It is tempting to try to define more intuitively what we mean by “value” and “side effects”, and what the difference between them is. In general, though, this is extremely difficult. It is also unnecessary; instead, we can quite happily define the behaviour of a Scheme program by specifying how Scheme executes a program as a whole, and then by describing the value and side effects of evaluation for each type of expression individually.

; So, some1 definitions…

;    A Scheme program consists of a sequence of expressions.
;    A Scheme interpreter executes the program by evaluating these expressions in order, one by one.
;    An expression can be
;        a piece of literal data, such as a number 2.3 or a string "Hello world!"
;        a variable name
;        a procedure invocation expression
;        one of Scheme’s special syntactic expressions. 

; The following subsections describe how each of these types of expression is evaluated.

 ;   Evaluating Literal Data
 ;   Evaluating a Variable Reference
 ;   Evaluating a Procedure Invocation Expression
 ;   Evaluating Special Syntactic Expressions
