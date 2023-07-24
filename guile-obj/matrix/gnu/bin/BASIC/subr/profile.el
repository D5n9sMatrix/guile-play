; 4.4.4.5 Profile Commands

; time exp
; Time execution.
; [REPL Command]
; profile exp [#:hz hz=100] [#:count-calls? count-calls?=#f]
; [REPL Command]
; [#:display-style display-style=list]

; Profile execution of an expression. This command compiled exp and then
; runs it within  the statprof profiler, passing all  keyword options to
; the statprof proce- dure. For more  on statprof and on the the options
; available to this command, See

; Section 7.20 [Statprof], page 753.
; trace exp [#:width w] [#:max-indent i]
; [REPL Command]
; Trace execution.

; By  default, the  trace will  limit  its width  to the  width of  your
; terminal, or width if specified.  Nested procedure invocations will be
; printed farther to  the right, though if the width  of the indentation
; passes  the max-indent,  the indentation  is abbreviated.   These REPL
; commands can also be called as regular functions in scheme code on in-
; cluding the (ice-9 time) module.

