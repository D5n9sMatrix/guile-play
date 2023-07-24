; 3.4 The Concept of Closure

; The concept of closure is the idea that a lambda expression “captures” the variable bindings that are in lexical scope at the point where the lambda expression occurs. The procedure created by the lambda expression can refer to and mutate the captured bindings, and the values of those bindings persist between procedure calls.

; This section explains and explores the various parts of this idea in more detail.

;    Names, Locations, Values and Environments
;    Local Variables and Environments
;    Environment Chaining
;    Lexical Scope
;    Closure
;    Example 1: A Serial Number Generator
;    Example 2: A Shared Persistent Variable
;    Example 3: The Callback Closure Problem
;    Example 4: Object Orientation

