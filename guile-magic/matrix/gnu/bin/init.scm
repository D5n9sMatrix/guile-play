;; init.scm Initializing Guile

; Initializing Guile

;   Each thread that wants to use functions from the Guile API needs
;   itself into guile mode with either scm_with_guile or scm_init_gui
;   The global state of Guile is initialized automatically when the f
;   thread enters guile mode.

