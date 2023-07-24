; 3.2.3 Creating and Using a New Procedure

; Scheme has lots of standard procedures, and Guile provides all of these via predefined top level variables. All of these standard procedures are documented in the later chapters of this reference manual.

; Before very long, though, you will want to create new procedures that encapsulate aspects of your own applications’ functionality. To do this, you can use the famous lambda syntax.

; For example, the value of the following Scheme expression

(lambda (name address) body …)

; is a newly created procedure that takes two arguments: name and address. The behaviour of the new procedure is determined by the sequence of expressions and definitions in the body of the procedure definition. (Typically, body would use the arguments in some way, or else there wouldn’t be any point in giving them to the procedure.) When invoked, the new procedure returns a value that is the value of the last expression in the body.

; To make things more concrete, let’s suppose that the two arguments are both strings, and that the purpose of this procedure is to form a combined string that includes these arguments. Then the full lambda expression might look like this:

(lambda (name address)
  (string-append "Name=" name ":Address=" address))

We noted in the previous subsection that the procedure part of a procedure invocation expression can be any Scheme expression whose value is a procedure. But that’s exactly what a lambda expression is! So we can use a lambda expression directly in a procedure invocation, like this:

((lambda (name address)
   (string-append "Name=" name ":Address=" address))
 "FSF"
 "Cambridge") 

; This is a valid procedure invocation expression, and its result is the string:

"Name=FSF:Address=Cambridge"

; It is more common, though, to store the procedure value in a variable —

(define make-combined-string
  (lambda (name address)
    (string-append "Name=" name ":Address=" address)))

; — and then to use the variable name in the procedure invocation:

(make-combined-string "FSF" "Cambridge") 

; Which has exactly the same result.

; It’s important to note that procedures created using lambda have exactly the same status as the standard built in Scheme procedures, and can be invoked, passed around, and stored in variables in exactly the same ways.
