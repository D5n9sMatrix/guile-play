; 5.4.3 Control Flow

; Scheme has  a more general view  of program flow than  C, both locally
; and  non-locally.   Controlling the  local  flow  of control  involves
; things  like  gotos,  loops,  calling  functions  and  returning  from
; them. Non-local  control flow refers  to situations where  the program
; jumps across one or more  levels of function activations without using
; the normal  call or return operations.   The primitive means of  C for
; local control  flow is  the goto statement,  together with  if.  Loops
; done with for,  while or do could in principle  be rewritten with just
; goto and if. In Scheme, the  primitive means for local control flow is
; the function call (together with if).  2 Note that Guile does not scan
; the C  heap for  references, so  a reference  to a  SCM object  from a
; memory segment allocated with malloc will have to use some other means
; to keep the  SCM object alive. See Section  6.17.1 [Garbage Collection
; Functions],  page  404.Chapter  5:  Programming  in  C  69  Thus,  the
; repetition of some computation in  a loop is ultimately implemented by
; a function that calls itself, that is, by recursion.  This approach is
; theoretically  very powerful  since it  is easier  to reason  formally
; about recursion  than about gotos.  In C, using  recursion exclusively
; would not be  practical, though, since it would eat  up the stack very
; quickly.  In Scheme,  however, it  is practical:  function calls  that
; appear in a  tail position do not use any  additional stack space (see
; Section 3.3.2  [Tail Calls], page 24).   A function call is  in a tail
; position when  it is the  last thing  the calling function  does.  The
; value returned by the called function is immediately returned from the
; calling function.  In the following example, the call to bar-1 is in a
; tail position,  while the  call to bar-2  is not. (The  call to  1- in
; foo-2 is in a tail position, though.)

(define (foo-1 x)
(bar-1 (1- x)))
(define (foo-2 x)
(1- (bar-2 x)))

; Thus,  when you  take  care to  recurse only  in  tail positions,  the
; recursion will only use constant stack space  and will be as good as a
; loop  constructed   from  gotos.    Scheme  offers  a   few  syntactic
; abstractions  (do and  named  let) that  make  writing loops  slightly
; easier.  But only Scheme functions can  call other functions in a tail
; position: C  functions can not. This  matters when you have,  say, two
; functions that call each other recursively  to form a common loop. The
; following  (unrealistic)   example  shows  how  one   might  go  about
; determining whether a non-negative integer n is even or odd.

; (define (my-even? n)
; (cond ((zero? n) #t)
; (else (my-odd? (1- n)))))
; (define (my-odd? n)
; (cond ((zero? n) #f)
; (else (my-even? (1- n)))))

; Because the calls to my-even? and my-odd? are in tail positions, these
; two  procedures can  be applied  to arbitrary  large integers  without
; overflowing  the stack.  (They  will  still take  a  lot  of time,  of
; course.)  However,  when one or  both of  the two procedures  would be
; rewritten  in C,  it could  no  longer call  its companion  in a  tail
; position (since C does not have  this concept). You might need to take
; this  consideration into  account when  deciding which  parts of  your
; program to  write in Scheme  and which in  C.  In addition  to calling
; functions  and returning  from them,  a Scheme  program can  also exit
; non-locally from a function so  that the control flow returns directly
; to an outer level.  This means that some functions might not return at
; all.  Even more, it  is not only possible to jump  to some outer level
; of control, a Scheme  program can also jump back into  the middle of a
; function that has  already exited. This might cause  some functions to
; return  more than  once.70 Guile  Reference Manual  In general,  these
; non-local jumps  are done by  invoking continuations that  have previ-
; ously been  captured using call-with-current-continuation.  Guile also
; offers a slightly  restricted set of functions, catch  and throw, that
; can only  be used  for non-local exits.   This restriction  makes them
; more  efficient.   Error  reporting  (with  the   function  error)  is
; implemented by  invoking throw, for  example. The functions  catch and
; throw belong to  the topic of exceptions.  Since  Scheme functions can
; call  C functions  and  vice versa,  C code  can  experience the  more
; general  control flow  of Scheme  as  well. It  is possible  that a  C
; function will not return at all,  or will return more than once. While
; C does  offer setjmp and longjmp  for non-local exits, it  is still an
; unusual thing for C code. In contrast, non-local exits are very common
; in Scheme, mostly  to report errors.  You need to  be prepared for the
; non-local jumps in  the control flow whenever you use  a function from
; libguile: it is best to assume that any libguile function might signal
; an  error or  run  a pending  signal  handler (which  in  turn can  do
; arbitrary things).  It is often necessary to take cleanup actions when
; the control  leaves a  function non- locally.  Also, when  the control
; returns  non-locally, some  setup actions  might be  called for.   For
; example, the  Scheme function with-output-to-port needs  to modify the
; global state  so that current-output-port  returns the port  passed to
; with-output-to-port. The global  output port needs to be  reset to its
; previous value when with-output-to-port returns normally or when it is
; exited  non-locally. Likewise,  the port  needs to  be set  again when
; control  enters non-locally.   Scheme  code can  use the  dynamic-wind
; function to  arrange for  the setting  and reset-  ting of  the global
; state.  C code  can  use  the corresponding  scm_internal_dynamic_wind
; function,  or a  scm_dynwind_begin/scm_dynwind_end pair  together with
; suitable ’dynwind  actions’ (see Section 6.11.10  [Dynamic Wind], page
; 317).  Instead  of coping  with non-local control  flow, you  can also
; prevent it  by erecting  a continuation  barrier, See  Section 6.11.14
; [Continuation      Barriers],     page      328.     The      function
; scm_c_with_continuation_barrier, for example,  is guaranteed to return
; exactly once.

