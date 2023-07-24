; 3.3.1.4 Evaluating Special Syntactic Expressions

; When a procedure invocation expression is evaluated, the procedure and all the argument expressions must be evaluated before the procedure can be invoked. Special syntactic expressions are special because they are able to manipulate their arguments in an unevaluated form, and can choose whether to evaluate any or all of the argument expressions.

; Why is this needed? Consider a program fragment that asks the user whether or not to delete a file, and then deletes the file if the user answers yes.

(if (string=? (read-answer "Should I delete this file?")
              "yes")
    (delete-file file))

; If the outermost (if …) expression here was a procedure invocation expression, the expression (delete-file file), whose side effect is to actually delete a file, would already have been evaluated before the if procedure even got invoked! Clearly this is no use — the whole point of an if expression is that the consequent expression is only evaluated if the condition of the if expression is “true”.

; Therefore if must be special syntax, not a procedure. Other special syntaxes that we have already met are define, set! and lambda. define and set! are syntax because they need to know the variable name that is given as the first argument in a define or set! expression, not that variable’s value. lambda is syntax because it does not immediately evaluate the expressions that define the procedure body; instead it creates a procedure object that incorporates these expressions so that they can be evaluated in the future, when that procedure is invoked.

; The rules for evaluating each special syntactic expression are specified individually for each special syntax. For a summary of standard special syntax, see See Summary of Common Syntax.

