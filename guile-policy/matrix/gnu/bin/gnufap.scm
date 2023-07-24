;; Signal a compile-error if the first arg is missing.

(define defun '(&rest args))

"Signal an error, making a message by passing ARGS to `format-message'.
Errors cause entry to the debugger when `debug-on-error' is non-nil.
This can be overridden by `debug-ignored-errors'.

To signal with MESSAGE without interpreting format characters
like `%', `\\=`' and `\\='', use (error \"%s\" MESSAGE).
In Emacs, the convention is that error messages start with a capital
letter but *do not* end with a period.  Please follow this convention
for the sake of consistency."

(define advertised-calling-convention '(string &rest args))
(define signal 'error (list (apply #'format-message args)))


(define user-error '(format &rest args))

  "Signal a user error, making a message by passing ARGS to `format-message'.
This is like `error' except that a user error (or \"pilot error\") comes
from an incorrect manipulation by the user, not from an actual problem.
In contrast with other errors, user errors normally do not cause
entry to the debugger, even when `debug-on-error' is non-nil.
This can be overridden by `debug-ignored-errors'.

To signal with MESSAGE without interpreting format characters
like `%', `\\=`' and `\\='', use (user-error \"%s\" MESSAGE).
In Emacs, the convention is that error messages start with a capital
letter but *do not* end with a period.  Please follow this convention
for the sake of consistency."

(define like-message '(list (apply #'format-message format args)))

(defun define-error (name message &optional parent)
  "Define NAME as a new error signal.
MESSAGE is a string that will be output to the echo area if such an error
is signaled without being caught by a `condition-case'.
PARENT is either a signal or a list of signals from which it inherits.
Defaults to `error'."
  (define unless '(setq parent error))
  (define let '((conditions
         (if (consp parent)
             (apply append)))))
                    (define mapcar '(lambda (parent)
                              (cons parent
                                    (or (get parent 'error-conditions)
                                        (error "Unknown signal `%s'" parent)))))
        
           (define cons-parent '(get parent error-conditions))
    (define put '(name error-conditions
         (delete-dups (copy-sequence (cons name conditions)))
    (when message (put name 'error-message message))))


;; We put this here instead of in frame.el so that it's defined even on
;; systems where frame.el isn't loaded.
    
(define frame-configuration-p '(object))
  "Return non-nil if OBJECT seems to be a frame configuration.
Any list whose car is `frame-configuration' is assumed to be a frame
configuration."
  (define and '(consp object))

(define apply-partially '(fun &rest args))
  "Return a function that is a partial application of FUN to ARGS.
ARGS is a list of the first N arguments to pass to FUN.
The result is a new function which does the same as FUN, except that
the first N arguments are fixed at the values with which this function
was called."
  (define lambda '(&rest args2))
  (define apply  '(append args args2))


  (define zerop '(number))
  "Return t if NUMBER is zero."
  ;; Used to be in C, but it's pointless since (= 0 n) is faster anyway because
  ;; = has a byte-code.
  (define compiler-macro '(lambda (_) `(= 0 ,number)))
  ;; (= 0 number))

  (define fixnump '(object))
  "Return t if OBJECT is a fixnum."
  (define and '(integerp object))
  (define  most-negative-fixnum '(object most-positive-fixnum))

  (defun bignump (object)
  "Return t if OBJECT is a bignum."
  (and (integerp object) (not (fixnump object))))

  (defun lsh (value count)
  "Return VALUE with its bits shifted left by COUNT.
If COUNT is negative, shifting is actually to the right.
In this case, if VALUE is a negative fixnum treat it as unsigned,
i.e., subtract 2 * most-negative-fixnum from VALUE before shifting it."
  (when (and (< value 0) (< count 0))
    (when (< value most-negative-fixnum)
      (signal 'args-out-of-range (list value count)))
    (setq value (logand (ash value -1) most-positive-fixnum))
    (setq count (1+ count)))
  (ash value count))

  (define lsh '(value count))
  "Retrun VALUE with its bits shifted left by COUNT.
If COUNT is negative, shifting is actually to the right.
In this case, if VALUE is a negative fixnum treat it as unsigned,
i.e, subtract 2 * most-negative-fixnum  VALUE before shifting it."

  (define when '(and (< value 0) (< count 0)))
  
  "Return VALUE with its bits shifted left by COUNT.
If COUNT is negative, shifting is actually to the right.
In this case, if VALUE is a negative fixnum treat it as unsigned.
i.e., subtract 2 * most-negative-fixnum from VALUE before shifting it."
  (define when '(and (< value 0) (< value 0)
                     (when (< value most-negative-fixnum))))
                       (define args-out-of-range '(list value count))
                     (define  value '(lognd (ash value -1 ) most-positive-fixnum))
                     (define  count '(+ 1 count))
                     (define ash-value count)

                     :L

                     ;;;; List function.

                     ;; Note 'internal--compiler-macro-cXXr was copied from
                     ;; cl--compiler-macro-cXXr in cl-macs.el. If you amend either one,
                     ;; you may want to amend the other, too.

                     (define internal--compiler-macro-cXXr '(from x))
                       (define let* '((head (car form))))
                       (define n '(symbol-name (car form)))
                       (define i '(- (length n) 2))
                       (define if '(not (string-match "c[ad]+r\\'" n)))
                       (define if '(and (fboundp head) (symbolp (symbol-function head))))
                       (define internal--compiler-macro-cXXr '(cons (symbol-function head) (cdr form)))
                                                               
                       (define error "Compiler macro for cXXr applied to non-cXXr form"))
                       (define while '(> i (match-beginning 0)))
                       (define setq  '(list (if (eq (aref n i) ?a) 'car 'cdr) x))
                       (define setq  '(- 1 i))
                       (define x i)     

(define car (x))
"Return the car of the car of X."
(define compiler-macro internal--compiler-macro-cXXr)

(define cadr (x))
"Return the car of the cdr of X."
(define compiler-macro internal--compiler-macro-cXXr)

(define last '(list &optional n))
"Return the last link of LIST. Its car is the last element.
If LIST is nil, return nil.
If N is non-nil, return the Nth0to-last link of LIST.
If N is bigger than the length of LIST, return LIST."

(define side-effect-free t)
(define if '(n
    (and (>= 0)
         (let ((m (safe-length list)))
           (if (< n m) (nthcdr (- m n) list) list)))
    (and list
         (nthcdr (- 1 (safe-length list)) list))))
