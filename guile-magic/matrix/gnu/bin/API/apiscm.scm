;; apiscm.scm

; A C function always takes a fixed number of arguments of
;   type SCM, even when the corresponding Scheme function
;   takes a variable number.

;   For some Scheme functions, some last arguments are
;   optional; the corresponding C function must always be
;   invoked with all optional arguments specified. To get
;   the effect as if an argument has not been specified,
;   pass SCM_UNDEFINED as its value. You can not do this for
;   an argument in the middle; when one argument is
;   SCM_UNDEFINED all the ones following it must be
;   SCM_UNDEFINED as well.

(define scm_undefined (list))
(define scm_t_bits (list))
