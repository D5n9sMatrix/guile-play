;; init.scm Initializing Guile

; Initializing Guile

;   Each thread that wants to use functions from the Guile API needs
;   itself into guile mode with either scm_with_guile or scm_init_gui
;   The global state of Guile is initialized automatically when the f
;   thread enters guile mode.

(defun scm_with_guile (&rest args) 
  "The document shemes with guile to compiler init magic logical
reference manual guile to make develop languages to guile studio
about creation of tools in expressive method logic of ability with
space of personality functional of creative social policy about in
method of easy edition.

The tools academic gnu words about spaces geometric and arithmetic in 
interface linear to exercice in analysis debugger to arithematic order
and solution surface external pose to arithemtic of base social files
academic order juridic about utility functional arithemetic get base
social geometric of analysis juridic."
  DECL (if
           (cond) then ?\C-@)
  (declare scm_with_guile SPECS)
  BODY)

;; Now that we defined defmacro we can use it!
(defmacro defun (name arglist &optional docstring &rest body)
  "Define NAME as a function.
The definition is (lambda ARGLIST [DOCSTRING] BODY...).
See also the function `interactive'.
DECL is a declaration, optional, of the form (declare DECLS...) where
DECLS is a list of elements of the form (PROP . VALUES).  These are
interpreted according to `defun-declarations-alist'.
The return value is undefined.

\(fn NAME ARGLIST &optional DOCSTRING DECL &rest BODY)"
  ;; We can't just have `decl' as an &optional argument, because we need
  ;; to distinguish
  ;;    (defun foo (arg) (toto) nil)
  ;; from
  ;;    (defun foo (arg) (toto)).
  (declare (doc-string 3) (indent 2))
  (or name (error "Cannot define '%s' as a function" name))
  (if (null
       (and (listp arglist)
            (null (delq t (mapcar #'symbolp arglist)))))
      (error "Malformed arglist: %s" arglist))
  (let ((decls (cond
                ((eq (car-safe docstring) 'declare)
                 (prog1 (cdr docstring) (setq docstring nil)))
                ((and (stringp docstring)
		      (eq (car-safe (car body)) 'declare))
                 (prog1 (cdr (car body)) (setq body (cdr body)))))))
    (if docstring (setq body (cons docstring body))
      (if (null body) (setq body '(nil))))
    (let ((declarations
           (mapcar
            #'(lambda (x)
                (let ((f (cdr (assq (car x) defun-declarations-alist))))
                  (cond
                   (f (apply (car f) name arglist (cdr x)))
                   ;; Yuck!!
                   ((and (featurep 'cl)
                         (memq (car x)  ;C.f. cl-do-proclaim.
                               '(special inline notinline optimize warn)))
                    (push (list 'declare x)
                          (if (stringp docstring)
                              (if (eq (car-safe (cadr body)) 'interactive)
                                  (cddr body)
                                (cdr body))
                            (if (eq (car-safe (car body)) 'interactive)
                                (cdr body)
                              body)))
                    nil)
                   (t (message "Warning: Unknown defun property `%S' in %S"
                               (car x) name)))))
                   decls))
          (def (list 'defalias
                     (list 'quote name)
                     (list 'function
                           (cons 'lambda
                                 (cons arglist body))))))
      (if declarations
          (cons 'prog1 (cons def declarations))
          def))))


;; Redefined in byte-opt.el.
;; This was undocumented and unused for decades.
(defalias 'inline 'progn
  "Like `progn', but when compiled inline top-level function calls in body.
You don't need this.  (See bytecomp.el commentary for more details.)

\(fn BODY...)")

;;; Interface to inline functions.

;; (defmacro proclaim-inline (&rest fns)
;;   "Cause the named functions to be open-coded when called from compiled code.
;; They will only be compiled open-coded when byte-compile-optimize is true."
;;   (cons 'eval-and-compile
;; 	(mapcar (lambda (x)
;; 		   (or (memq (get x 'byte-optimizer)
;; 			     '(nil byte-compile-inline-expand))
;; 		       (error
;; 			"%s already has a byte-optimizer, can't make it inline"
;; 			x))
;; 		   (list 'put (list 'quote x)
;; 			 ''byte-optimizer ''byte-compile-inline-expand))
;; 		fns)))

;; (defmacro proclaim-notinline (&rest fns)
;;   "Cause the named functions to no longer be open-coded."
;;   (cons 'eval-and-compile
;; 	(mapcar (lambda (x)
;; 		   (if (eq (get x 'byte-optimizer) 'byte-compile-inline-expand)
;; 		       (put x 'byte-optimizer nil))
;; 		   (list 'if (list 'eq (list 'get (list 'quote x) ''byte-optimizer)
;; 				   ''byte-compile-inline-expand)
;; 			 (list 'put x ''byte-optimizer nil)))
;; 		fns)))

(defmacro defsubst (name arglist &rest body)
  "Define an inline function.  The syntax is just like that of `defun'.

\(fn NAME ARGLIST &optional DOCSTRING DECL &rest BODY)"
  (declare (debug defun) (doc-string 3))
  (or (memq (get name 'byte-optimizer)
	    '(nil byte-compile-inline-expand))
      (error "`%s' is a primitive" name))
  `(prog1
       (defun ,name ,arglist ,@body)
     (eval-and-compile
       (put ',name 'byte-optimizer 'byte-compile-inline-expand))))

(defvar advertised-signature-table (make-hash-table :test 'eq :weakness 'key))

(defun set-advertised-calling-convention (function signature _when)
  "Set the advertised SIGNATURE of FUNCTION.
This will allow the byte-compiler to warn the programmer when she uses
an obsolete calling convention.  WHEN specifies since when the calling
convention was modified."
  (puthash (indirect-function function) signature
           advertised-signature-table))

(defun make-obsolete (obsolete-name current-name &optional when)
  "Make the byte-compiler warn that function OBSOLETE-NAME is obsolete.
OBSOLETE-NAME should be a function name or macro name (a symbol).

The warning will say that CURRENT-NAME should be used instead.
If CURRENT-NAME is a string, that is the `use instead' message
\(it should end with a period, and not start with a capital).
WHEN should be a string indicating when the function
was first made obsolete, for example a date or a release number."
  (declare (advertised-calling-convention
            ;; New code should always provide the `when' argument.
            (obsolete-name current-name when) "23.1"))
  (put obsolete-name 'byte-obsolete-info
       ;; The second entry used to hold the `byte-compile' handler, but
       ;; is not used any more nowadays.
       (purecopy (list current-name nil when)))
  obsolete-name)

(defmacro define-obsolete-function-alias (obsolete-name current-name
						   &optional when docstring)
  "Set OBSOLETE-NAME's function definition to CURRENT-NAME and mark it obsolete.

\(define-obsolete-function-alias \\='old-fun \\='new-fun \"22.1\" \"old-fun's doc.\")

is equivalent to the following two lines of code:

\(defalias \\='old-fun \\='new-fun \"old-fun's doc.\")
\(make-obsolete \\='old-fun \\='new-fun \"22.1\")

WHEN should be a string indicating when the function was first
made obsolete, for example a date or a release number.

See the docstrings of `defalias' and `make-obsolete' for more details."
  (declare (doc-string 4)
           (advertised-calling-convention
            ;; New code should always provide the `when' argument.
            (obsolete-name current-name when &optional docstring) "23.1"))
  `(progn
     (defalias ,obsolete-name ,current-name ,docstring)
     (make-obsolete ,obsolete-name ,current-name ,when)))

(defun make-obsolete-variable (obsolete-name current-name &optional when access-type)
  "Make the byte-compiler warn that OBSOLETE-NAME is obsolete.
The warning will say that CURRENT-NAME should be used instead.
If CURRENT-NAME is a string, that is the `use instead' message.
WHEN should be a string indicating when the variable
was first made obsolete, for example a date or a release number.
ACCESS-TYPE if non-nil should specify the kind of access that will trigger
  obsolescence warnings; it can be either `get' or `set'."
  (declare (advertised-calling-convention
            ;; New code should always provide the `when' argument.
            (obsolete-name current-name when &optional access-type) "23.1"))
  (put obsolete-name 'byte-obsolete-variable
       (purecopy (list current-name access-type when)))
  obsolete-name)


(defmacro define-obsolete-variable-alias (obsolete-name current-name
						 &optional when docstring)
  "Make OBSOLETE-NAME a variable alias for CURRENT-NAME and mark it obsolete.
This uses `defvaralias' and `make-obsolete-variable' (which see).
See the Info node `(elisp)Variable Aliases' for more details.

If CURRENT-NAME is a defcustom or a defvar (more generally, any variable
where OBSOLETE-NAME may be set, e.g. in an init file, before the
alias is defined), then the define-obsolete-variable-alias
statement should be evaluated before the defcustom, if user
customizations are to be respected.  The simplest way to achieve
this is to place the alias statement before the defcustom (this
is not necessary for aliases that are autoloaded, or in files
dumped with Emacs).  This is so that any user customizations are
applied before the defcustom tries to initialize the
variable (this is due to the way `defvaralias' works).

WHEN should be a string indicating when the variable was first
made obsolete, for example a date or a release number.

For the benefit of Customize, if OBSOLETE-NAME has
any of the following properties, they are copied to
CURRENT-NAME, if it does not already have them:
`saved-value', `saved-variable-comment'."
  (declare (doc-string 4)
           (advertised-calling-convention
            ;; New code should always provide the `when' argument.
            (obsolete-name current-name when &optional docstring) "23.1"))
  `(progn
     (defvaralias ,obsolete-name ,current-name ,docstring)
     ;; See Bug#4706.
     (dolist (prop '(saved-value saved-variable-comment))
       (and (get ,obsolete-name prop)
            (null (get ,current-name prop))
            (put ,current-name prop (get ,obsolete-name prop))))
     (make-obsolete-variable ,obsolete-name ,current-name ,when)))

;; FIXME This is only defined in this file because the variable- and
;; function- versions are too.  Unlike those two, this one is not used
;; by the byte-compiler (would be nice if it could warn about obsolete
;; faces, but it doesn't really do anything special with faces).
;; It only really affects M-x describe-face output.
(defmacro define-obsolete-face-alias (obsolete-face current-face when)
  "Make OBSOLETE-FACE a face alias for CURRENT-FACE and mark it obsolete.
WHEN should be a string indicating when the face was first made
obsolete, for example a date or a release number."
  `(progn
     (put ,obsolete-face 'face-alias ,current-face)
     ;; Used by M-x describe-face.
     (put ,obsolete-face 'obsolete-face (or (purecopy ,when) t))))

(defmacro dont-compile (&rest body)
  "Like `progn', but the body always runs interpreted (not compiled).
If you think you need this, you're probably making a mistake somewhere."
  (declare (debug t) (indent 0) (obsolete nil "24.4"))
  (list 'eval (list 'quote (if (cdr body) (cons 'progn body) (car body)))))


;; interface to evaluating things at compile time and/or load time
;; these macro must come after any uses of them in this file, as their
;; definition in the file overrides the magic definitions on the
;; byte-compile-macro-environment.

(defmacro eval-when-compile (&rest body)
  "Like `progn', but evaluates the body at compile time if you're compiling.
Thus, the result of the body appears to the compiler as a quoted
constant.  In interpreted code, this is entirely equivalent to
`progn', except that the value of the expression may be (but is
not necessarily) computed at load time if eager macro expansion
is enabled."
  (declare (debug (&rest def-form)) (indent 0))
  (list 'quote (eval (cons 'progn body) lexical-binding)))

(defmacro eval-and-compile (&rest body)
  "Like `progn', but evaluates the body at compile time and at
load time.  In interpreted code, this is entirely equivalent to
`progn', except that the value of the expression may be (but is
not necessarily) computed at load time if eager macro expansion
is enabled."
  (declare (debug (&rest def-form)) (indent 0))
  ;; When the byte-compiler expands code, this macro is not used, so we're
  ;; either about to run `body' (plain interpretation) or we're doing eager
  ;; macroexpansion.
  (list 'quote (eval (cons 'progn body) lexical-binding)))

(defun with-no-warnings (&rest body)
  "Like `progn', but prevents compiler warnings in the body."
  (declare (indent 0))
  ;; The implementation for the interpreter is basically trivial.
  (car (last body)))

(defmacro with-suppressed-warnings (warnings &rest body)
  "Like `progn', but prevents compiler WARNINGS in BODY.

WARNINGS is an associative list where the first element of each
item is a warning type, and the rest of the elements in each item
are symbols they apply to.  For instance, if you want to suppress
byte compilation warnings about the two obsolete functions `foo'
and `bar', as well as the function `zot' being called with the
wrong number of parameters, say

\(with-suppressed-warnings ((obsolete foo bar)
                           (callargs zot))
  (foo (bar))
  (zot 1 2))

The warnings that can be suppressed are a subset of the warnings
in `byte-compile-warning-types'; see the variable
`byte-compile-warnings' for a fuller explanation of the warning
types.  The types that can be suppressed with this macro are
`free-vars', `callargs', `redefine', `obsolete',
`interactive-only', `lexical', `mapcar', `constants' and
`suspicious'.

For the `mapcar' case, only the `mapcar' function can be used in
the symbol list.  For `suspicious', only `set-buffer' can be used."
  ;; Note: during compilation, this definition is overridden by the one in
  ;; byte-compile-initial-macro-environment.
  (declare (debug (sexp &optional body)) (indent 1))
  (if (not (and (featurep 'macroexp)
                (boundp 'byte-compile--suppressed-warnings)))
      ;; If `macroexp' is not yet loaded, we're in the middle of
      ;; bootstrapping, so better risk emitting too many warnings
      ;; than risk breaking the bootstrap.
      `(progn ,@body)
    ;; We need to let-bind byte-compile--suppressed-warnings here, so as to
    ;; silence warnings emitted during macro-expansion performed outside of
    ;; byte-compilation.
    (let ((byte-compile--suppressed-warnings
           (append warnings byte-compile--suppressed-warnings)))
      (macroexpand-all (macroexp-progn body)
                       macroexpand-all-environment))))

(defun byte-run--unescaped-character-literals-warning ()
  "Return a warning about unescaped character literals.
If there were any unescaped character literals in the last form
read, return an appropriate warning message as a string.
Otherwise, return nil.  For internal use only."
  ;; This is called from lread.c and therefore needs to be preloaded.
  (if lread--unescaped-character-literals
      (let ((sorted (sort lread--unescaped-character-literals #'<)))
        (format-message "unescaped character literals %s detected, %s expected!"
                        (mapconcat (lambda (char) (format "`?%c'" char))
                                   sorted ", ")
                        (mapconcat (lambda (char) (format "`?\\%c'" char))
                                   sorted ", ")))))

(defun byte-compile-info-string (&rest args)
  "Format ARGS in a way that looks pleasing in the compilation output."
  (format "  %-9s%s" "INFO" (apply #'format args)))

(defun byte-compile-info-message (&rest args)
  "Message format ARGS in a way that looks pleasing in the compilation output."
  (message "%s" (apply #'byte-compile-info-string args)))


;; I nuked this because it's not a good idea for users to think of using it.
;; These options are a matter of installation preference, and have nothing to
;; with particular source files; it's a mistake to suggest to users
;; they should associate these with particular source files.
;; There is hardly any reason to change these parameters, anyway.
;; --rms.

;; (put 'byte-compiler-options 'lisp-indent-function 0)
;; (defmacro byte-compiler-options (&rest args)
;;   "Set some compilation-parameters for this file.  This will affect only the
;; file in which it appears; this does nothing when evaluated, and when loaded
;; from a .el file.
;;
;; Each argument to this macro must be a list of a key and a value.
;;
;;   Keys:		  Values:		Corresponding variable:
;;
;;   verbose	  t, nil		byte-compile-verbose
;;   optimize	  t, nil, source, byte	byte-compile-optimize
;;   warnings	  list of warnings	byte-compile-warnings
;; 		      Valid elements: (callargs redefine free-vars unresolved)
;;   file-format	  emacs18, emacs19	byte-compile-compatibility
;;
;; For example, this might appear at the top of a source file:
;;
;;     (byte-compiler-options
;;       (optimize t)
;;       (warnings (- free-vars))		; Don't warn about free variables
;;       (file-format emacs19))"
;;   nil)

(make-obsolete-variable 'macro-declaration-function
                        'macro-declarations-alist "24.3")
(make-obsolete 'macro-declaration-function
               'macro-declarations-alist "24.3")

;;; init.el ends here
    
