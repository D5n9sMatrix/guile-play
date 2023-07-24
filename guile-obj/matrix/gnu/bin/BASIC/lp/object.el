; 6.9.2 Object Properties

; It’s often useful to associate  a piece of additional information with
; a Scheme object even though that object does not have a dedicated slot
; available in which the additional  information could be stored. Object
; properties allow you to do just that.

; Guile’s    representation    of    an    object    property    is    a
; procedure-with-setter (see  Procedures with Setters) that  can be used
; with the  generalized form of set!  to set and retrieve  that property
; for any Scheme object. So, setting a property looks like this:

; (set! (my-property obj1) value-for-obj1)
; (set! (my-property obj2) value-for-obj2)

; And retrieving values of the same property looks like this:

; (my-property obj1)
; ⇒
; value-for-obj1

; (my-property obj2)
; ⇒
; value-for-obj2

; To  create   an  object   property  in  the   first  place,   use  the
; make-object-property procedure:

(define my-property (make-object-property))
