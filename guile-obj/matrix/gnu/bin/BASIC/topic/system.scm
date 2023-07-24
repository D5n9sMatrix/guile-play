; 4.4.4.8 System Commands

; gc
; Garbage collection.
; statistics
; Display statistics.
; [REPL Command]
; [REPL Command]
; option [name] [exp]
; [REPL Command]

; With no  arguments, lists  all options. With  one argument,  shows the
; current value  of the name option.  With two arguments, sets  the name
; option to the result of evaluating the Scheme expression exp.

; quit
; Quit this session.
; [REPL Command]
; Current REPL options include:
; compile-options
; interp

; The options used  when compiling expressions entered at  the REPL. See
; Section  6.16.6  [Compilation],  page  389, for  more  on  compilation
; options.  Whether  to interpret  or compile  expressions given  at the
; REPL, if such a choice

; is  available.  Off  by   default  (indicating  compilation).54  Guile
; Reference  Manual  promptA  customized  REPL prompt.  #f  by  default,
; indicating the default prompt.  printA procedure of two arguments used
; to print the result of evaluating each ex- pression. The arguments are
; the current REPL  and the value to  print. By default, #f,  to use the
; default  procedure.   value-history Whether  value  history  is on  or
; not. See Section 4.4.3 [Value History],  page 48.  on-error What to do
; when  an  error happens.  By  default,  debug,  meaning to  enter  the
; debugger. Other values include backtrace,  to show a backtrace without
; entering  the  debugger, or  report,  to  simply  show a  short  error
; printout.   Default  values   for  REPL  options  may   be  set  using
; repl-default-option-set!      from      (system     repl      common):
; repl-default-option-set! key value [Scheme  Procedure] Set the default
; value of  a REPL  option. This  function is  particularly useful  in a
; user’s init file. See Section 4.4.1 [Init File], page 48.
