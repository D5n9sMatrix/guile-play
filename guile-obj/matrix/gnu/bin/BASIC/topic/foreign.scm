; 5.5.5 Foreign Objects and Scheme

; It is  also possible to create  foreign objects and object  types from
; Scheme,  and to  access fields  of  foreign objects  from Scheme.  For
; example, the file example from  the last section could be equivalently
; expressed as:

(define-module (my-file)
#:use-module (system foreign-object)
#:use-module ((oop goops) #:select (make))
#:export (make-file))
(define (finalize-file file)
(let ((fd (struct-ref file 0)))
(unless (< fd 0)
(struct-set! file 0 -1)
(close-fdes fd))))
(define <file>
(make-foreign-object-type ’<file> ’(fd)
#:finalizer finalize-file))
(define (make-file fd)
(make <file> #:fd fd))

; Here we see that the  result of make-foreign-object-type, which is the
; equivalent of  scm_make_foreign_object_type, is  a struct  vtable. See
; Section  6.6.18.1  [Vtables],  page  224,  for  more  information.  To
; instantiate the foreign object, which is really a Guile struct, we use
; make. (We could  have used make-struct/no-tail, but  as an implementa-
; tion detail, finalizers  are attached in the  initialize method called
; by make). To access the fields, we use struct-ref and struct-set!. See
; Section 6.6.18.2 [Structure Basics], page 225.  There is a convenience
; syntax, define-foreign-object-type,  that defines a type  along with a
; constructor, and getters for the  fields. An appropriate invocation of
; define- foreign-object-type for  the file object type  could look like
; this:

; (use-modules (system foreign-object))
; (define-foreign-object-type <file>
; make-file
; (fd)
; #:finalizer finalize-file)

; This defines the <file> type  with one field, a make-file constructor,
; and a getter for the fd field,  bound to fd.  Foreign object types are
; not  only  vtables  but  are  actually GOOPS  classes,  as  hinted  at
; above.  See  Chapter  8  [GOOPS],   page  781,  for  more  on  Guile’s
; object-oriented  programming system.  Thus  one can  define print  and
; equality methods using GOOPS:

(use-modules (oop goops))
(define-method (write (file <file>) port)

  ;; Chapter 5: Programming in C

;; Assuming existence of the ‘fd’ getter
(format port "#<<file> ~a>" (fd file)))
; (define-method (equal? (a <file>) (b <file>))
;(eqv? (fd a) (fd b)))
;; One can even sub-class foreign types.
;(define-class <named-file> (<file>)
;(name #:init-keyword #:name #:init-value #f #:accessor name))

; The  question arises  of how  to  construct these  values, given  that
; make-file returns a plain old <file> object. It turns out that you can
; use the GOOPS construction interface, where every field of the foreign
; object has an associated initialization keyword argument.

;(define* (my-open-file name #:optional (flags O_RDONLY))
;(make <named-file> #:fd (open-fdes name flags) #:name name))
;(define-method (write (file <named-file>) port)
;(format port "#<<file> ~s ~a>" (name file) (fd file)))

; See Section 6.20 [Foreign Objects],  page 441, for full documentation
; on the  Scheme interface  to foreign objects.  See Chapter  8 [GOOPS],
; page 781, for  more on GOOPS.  As  a final note, you  might wonder how
; this system supports encapsulation of sensitive values. First, we have
; to  recognize that  some facilities  are essentially  unsafe and  have
; global scope. For example, in  C, the integrity and confidentiality of
; a  part of  a program  is at  the mercy  of every  other part  of that
; program – because any part of  the program can read and write anything
; in  its  address  space.  At  the  same  time,  principled  access  to
; structured data is organized in C  on lexical boundaries; if you don’t
; expose accessors for your object, you trust other parts of the program
; not to work  around that barrier.  The situation is  not dissimilar in
; Scheme. Although Scheme’s  unsafe constructs are fewer  in number than
; in  C, they  do exist.  The  (system foreign)  module can  be used  to
; violate  confidentiality and  integrity, and  shouldn’t be  exposed to
; untrusted code.  Although struct-ref and struct-set!  are less unsafe,
; they  still  have  a  cross-cutting  capability  of  drilling  through
; abstractions. Performing a struct-set! on  a foreign object slot could
; cause unsafe foreign  code to crash. Ultimately,  structures in Scheme
; are  capabilities for  abstraction, and  not abstractions  themselves.
; That leaves  us with the  lexical capabilities, like  constructors and
; accessors. Here is  where encapsulation lies: the  practical degree to
; which the innards of your foreign objects are exposed is the degree to
; which their  accessors are  lexically available in  user code.  If you
; want  to allow  users  to  reference fields  of  your foreign  object,
; provide them with a getter.  Otherwise you should assume that the only
; access to your object may come  from your code, which has the relevant
; authority, or  via code  with access  to cross-cutting  struct-ref and
; such, which also has the cross-cutting authority.
