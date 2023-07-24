; 4.4.4.6 Debug Commands

; These debugging commands  are only available within  a recursive REPL;
; they do  not work  at the  top level.
; backtrace [count]  [#:width w] [#:full? f]
; [REPL Command]
; Print  a backtrace.  Print a  backtrace of
; all stack frames, or innermost count frames. If count is negative, the
; last count frames  will be shown.
; up [count] [REPL  Command]
; Select a
;calling stack frame.   Select and print stack frames  that called this
; one. An  argument says how many  frames up to go.
; down [count] [REPLCommand]
; Select a  called stack frame.  Select and  print stack frames
; called  by this  one. An  argument says  how many  frames down  to go.
; frame
; [idx]  [REPL   Command]
; Show  a  frame.    Show  the  selected
; frame.  With an  argument,  select a  frame by  index,  then show  it.
; locals  Show local  variables.   Show locally-bound  variables in  the
; selected  frame.
; [REPL  Command] error-message
; [REPL Command]  error
; [REPL  Command] Show  error message.
; Display the  message associated
; with the  error that  started the  current debugging  REPL.  registers
; [REPL  Command]
; Show  the  VM registers  associated  with the  current
; frame.   See  Section  9.3.3
; [Stack   Layout],  page  837,  for  more
; information on VM stack frames.
; width [cols] [REPL Command]
; Sets the
; number of display  columns in the output of ,backtrace  and ,locals to
; cols.  If cols is  not given, the width of the  terminal is used.  The
; next 3  commands work  at any  REPL.  break proc  Set a  breakpoint at
; proc.
; [REPL Command] break-at-source file line  Set a breakpoint at the
; given source  location.
; [REPL Command]
; Chapter 4: Programming  in Scheme
; 53  tracepoint proc
; [REPL  Command]  Set a  tracepoint  on the  given
; procedure. This will  cause all calls to the procedure  to print out a
; tracing message. See  Section 6.26.4.4
; [Tracing Traps],  page 493, for
; more information.   The rest  of the commands  in this  subsection all
; apply only  when the  stack is  continuable — in  other words  when it
; makes sense  for the  program that  the stack  comes from  to continue
; running. Usually this means that the program stopped because of a trap
; or a breakpoint.   step next Tell the debugged program  to step to the
; next source location.
; [REPL Command]
; [REPL Command] Tell the debugged
; program to step  to the next source location in  the same frame.  (See
; Section 6.26.4 [Traps],  page 488 for the details of  how this works.)
; finish
; [REPL Command]  Tell the  program being  debugged to  continue
; running until the  completion of the current stack frame,  and at that
; time to print the result and reenter the REPL.

