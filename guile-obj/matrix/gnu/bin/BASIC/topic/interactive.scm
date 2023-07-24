;4.4.6 Interactive  Debugging

; A  recursive debugging REPL  exposes a
; number  of  other   meta-commands  that  inspect  the   state  of  the
; computation at the  time of the error. These commands  allow you to 
; display the Scheme  call stack at the point where  the error occurred;

;  move up  and down the call  stack, to see in  detail the expression
; being  evaluated,  or the  procedure  being  applied, in  each  frame;
; andChapter  4: Programming  in  Scheme  55   examine  the values  of
; variables and expressions  in the context of each  frame.  See Section

; 4.4.4.6 [Debug Commands], page 52, for documentation of the individual
; com-  mands. This  section aims  to give  more of  a walkthrough  of a
; typical  debugging  session.   First,  we’re  going  to  need  a  good
; error. Let’s try to macroexpand  the expression (unquote foo), outside
; of  a quasiquote  form, and  see  how the  macroexpander reports  this
; error.
; scheme@(guile-user)> (macroexpand  ’(unquote foo))
; ERROR: Inprocedure macroexpand:
; ERROR: unquote: expression not valid outside of
; quasiquote in  (unquote foo) Entering a  new prompt. Type ‘,bt’  for a
; backtrace or ‘,q’ to continue.  scheme@(guile-user) [1]> The backtrace
; command, which can also be invoked as bt, displays the call stack (aka
; backtrace)   at   the   point   where  the   debugger   was   entered:
; scheme@(guile-user) [1]> ,bt In  ice-9/psyntax.scm: 1130:21 3 (chi-top
; (unquote foo) () ((top)) e  (eval) (hygiene #)) 1071:30 2 (syntax-type
; (unquote  foo)  () ((top))  #f  #f  (#  #)  #f) 1368:28  1  (chi-macro
; #<procedure de9360  at ice-9/psyntax.scm...> ...)  In  unknown file: 0
; (scm-error syntax-error macroexpand "~a: ~a in  ~a" # #f) A call stack
; consists of a sequence of stack frames, with each frame describing one
; procedure which is waiting to do something with the values returned by
; another. Here  we see that there  are four frames on  the stack.  Note
; that macroexpand is not  on the stack – it must have  made a tail call
; to chi-top, as  indeed we would find if  we searched ice-9/psyntax.scm
; for its definition.  When you  enter the debugger, the innermost frame
; is selected,  which means  that the  commands for  getting information
; about  the  “current” frame,  or  for  evaluating expressions  in  the
; context of  the current frame, will  do so by default  with respect to
; the  innermost frame.  To  select  a different  frame,  so that  these
; operations  will apply  to  it instead,  use the  up,  down and  frame
; commands like this:
; scheme@(guile-user) [1]> ,up In ice-9/psyntax.scm:
; 1368:28 1 (chi-macro #<procedure  de9360 at ice-9/psyntax.scm...> ...)
; scheme@(guile-user)  [1]> ,frame  3  In  ice-9/psyntax.scm: 1130:21  3
; (chi-top   (unquote   foo)   ()   ((top))  e   (eval)   (hygiene   #))
; scheme@(guile-user)  [1]>   ,down  In  ice-9/psyntax.scm:   1071:30  2
; (syntax-type (unquote  foo) () ((top)) #f  #f (# #) #f)  Perhaps we’re
; interested in  what’s going on in  frame 2, so  we take a look  at its
; local variables: scheme@(guile-user) [1]>  ,locals Local variables: $1
; = e  = (unquote foo)56  Guile Reference Manual  $2 = r =  () $3 =  w =
; ((top)) $4 = s = #f $5 = rib = #f $6 = mod = (hygiene guile-user) $7 =
; for-car? =  #f $8 = first  = unquote $9 =  ftype = macro $10  = fval =
; #<procedure de9360 at ice-9/psyntax.scm:2817:2 (x)> $11 = fe = unquote
; $12 = fw = ((top)) $13 = fs = #f $14 = fmod = (hygiene guile-user) All
; of  the values  are accessible  by  their value-history  names ($n  ):
; scheme@(guile-user)   [1]>   $10   $15   =   #<procedure   de9360   at
; ice-9/psyntax.scm:2817:2 (x)> We can even  invoke the procedure at the
; REPL  directly:  scheme@(guile-user)   [1]>  ($10  ’not-going-to-work)
; ERROR: In  procedure macroexpand:  ERROR: source expression  failed to
; match any  pattern in  not-going-to-work Entering  a new  prompt. Type
; ‘,bt’ for a  backtrace or ‘,q’ to continue.  Well  at this point we’ve
; caused  an error  within an  error. Let’s  just quit  back to  the top
; level:  scheme@(guile-user)   [2]>  ,q  scheme@(guile-user)   [1]>  ,q
; scheme@(guile-user)> Finally,  as a  word to  the wise:  hackers close; their REPL prompts with C-d.

