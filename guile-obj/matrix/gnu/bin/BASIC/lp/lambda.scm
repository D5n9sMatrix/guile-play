; 3.2.4 Lambda Alternatives

;Since it is so common in Scheme programs to want to create a procedure and then store it in a variable, there is an alternative form of the define syntax that allows you to do just that.

;A define expression of the form

(define (name [arg1 [arg2 …]])
  body …)

;is exactly equivalent to the longer form

(define name
  (lambda ([arg1 [arg2 …]])
    body …))

;So, for example, the definition of make-combined-string in the previous subsection could equally be written:

(define (make-combined-string name address)
  (string-append "Name=" name ":Address=" address))

;This kind of procedure definition creates a procedure that requires exactly the expected number of arguments. There are two further forms of the lambda expression, which create a procedure that can accept a variable number of arguments:

(lambda (arg1 … . args) body …)

(lambda args body …)

;The corresponding forms of the alternative define syntax are:

(define (name arg1 … . args) body …)

(define (name . args) body …)

;For details on how these forms work, see See Lambda: Basic Procedure Creation.

;Prior to Guile 2.0, Guile provided an extension to define syntax that allowed you to nest the previous extension up to an arbitrary depth. These are no longer provided by default, and instead have been moved to Curried Definitions.

;(It could be argued that the alternative define forms are rather confusing, especially for newcomers to the Scheme language, as they hide both the role of lambda and the fact that procedures are values that are stored in variables in the same way as any other kind of value. On the other hand, they are very convenient, and they are also a good example of another of Scheme’s powerful features: the ability to specify arbitrary syntactic transformations at run time, which can be applied to subsequently read input.) 
