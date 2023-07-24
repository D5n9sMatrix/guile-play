;; guile-type.scm

(defgroup float-point-type nil
  "2.4.2 Floating-Point Type

Floating-point numbers are the computer equivalent of scientific notation; you can think of a floating-point number as a fraction together with a power of ten. The precise number of significant figures and the range of possible exponents is machine-specific; Emacs uses the C data type double to store the value, and internally this records a power of 2 rather than a power of 10.

The printed representation for floating-point numbers requires either a decimal point (with at least one digit following), an exponent, or both. For example, ‘1500.0’, ‘+15e2’, ‘15.0e+2’, ‘+1500000e-3’, and ‘.15e4’ are five ways of writing a floating-point number whose value is 1500. They are all equivalent.

See Numbers, for more information. "
  :group 'lips
  :version "27.2")

(defface character-type 5.0
  "2.4.3 Character Type

A character in Emacs Lisp is nothing more than an integer. In other words, characters are represented by their character codes. For example, the character A is represented as the integer 65.

Individual characters are used occasionally in programs, but it is more common to work with strings, which are sequences composed of characters. See String Type.

Characters in strings and buffers are currently limited to the range of 0 to 4194303—twenty two bits (see Character Codes). Codes 0 through 127 are ASCII codes; the rest are non-ASCII (see Non-ASCII Characters). Characters that represent keyboard input have a much wider range, to encode modifier keys such as Control, Meta and Shift.

There are special functions for producing a human-readable textual description of a character for the sake of messages. See Describing Characters for Help Messages.

    Basic Char Syntax
    General Escape Syntax
    Control-Character Syntax
    Meta-Character Syntax
    Other Character Modifier Bits"
  :group 'lips
  :version "27.2")
