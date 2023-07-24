; 3.3.2 Tail calls

;Scheme is “properly tail recursive”, meaning that tail calls or recursions from certain contexts do not consume stack space or other resources and can therefore be used on arbitrarily large data or for an arbitrarily long calculation. Consider for example,

(define (foo n)
  (display n)
  (newline)
  (foo (1+ n)))

(foo 1)
-|
1
2
3
…

; foo prints numbers infinitely, starting from the given n. It’s implemented by printing n then recursing to itself to print n+1 and so on. This recursion is a tail call, it’s the last thing done, and in Scheme such tail calls can be made without limit.

; Or consider a case where a value is returned, a version of the SRFI-1 last function (see Selectors) returning the last element of a list,

(define (my-last lst)
  (if (null? (cdr lst))
      (car lst)
      (my-last (cdr lst))))

(my-last '(1 2 3)) ⇒ 3      

; If the list has more than one element, my-last applies itself to the cdr. This recursion is a tail call, there’s no code after it, and the return value is the return value from that call. In Scheme this can be used on an arbitrarily long list argument.

; A proper tail call is only available from certain contexts, namely the following special form positions,

;    and — last expression
;    begin — last expression
;    case — last expression in each clause
;    cond — last expression in each clause, and the call to a => procedure is a tail call
;    do — last result expression
;    if — “true” and “false” leg expressions
;    lambda — last expression in body
;    let, let*, letrec, let-syntax, letrec-syntax — last expression in body
;    or — last expression 

; The following core functions make tail calls,

;    apply — tail call to given procedure
;    call-with-current-continuation — tail call to the procedure receiving the new continuation
;    call-with-values — tail call to the values-receiving procedure
;    eval — tail call to evaluate the form
;    string-any, string-every — tail call to predicate on the last character (if that point is reached) 


; The above are just core functions and special forms. Tail calls in other modules are described with the relevant documentation, for example SRFI-1 any and every (see Searching).

; It will be noted there are a lot of places which could potentially be tail calls, for instance the last call in a for-each, but only those explicitly described are guaranteed. 

