; 3.3.4 Summary of Common Syntax

; This subsection lists the most commonly used Scheme syntactic expressions, simply so that you will recognize common special syntax when you see it. For a full description of each of these syntaxes, follow the appropriate reference.

; lambda (see Lambda: Basic Procedure Creation) is used to construct procedure objects.

; define (see Top Level Variable Definitions) is used to create a new variable and set its initial value.

; set! (see Top Level Variable Definitions) is used to modify an existing variable’s value.

; let, let* and letrec (see Local Variable Bindings) create an inner lexical environment for the evaluation of a sequence of expressions, in which a specified set of local variables is bound to the values of a corresponding set of expressions. For an introduction to environments, see See The Concept of Closure.

; begin (see Sequencing and Splicing) executes a sequence of expressions in order and returns the value of the last expression. Note that this is not the same as a procedure which returns its last argument, because the evaluation of a procedure invocation expression does not guarantee to evaluate the arguments in order.

; if and cond (see Simple Conditional Evaluation) provide conditional evaluation of argument expressions depending on whether one or more conditions evaluate to “true” or “false”.

; case (see Simple Conditional Evaluation) provides conditional evaluation of argument expressions depending on whether a variable has one of a specified group of values.

; and (see Conditional Evaluation of a Sequence of Expressions) executes a sequence of expressions in order until either there are no expressions left, or one of them evaluates to “false”.

; or (see Conditional Evaluation of a Sequence of Expressions) executes a sequence of expressions in order until either there are no expressions left, or one of them evaluates to “true”.
