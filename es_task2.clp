CLIPS> (defrule Odd_number
?fact <- (number ?n)
(test (neq (mod ?n 2) 0))   ;
 =>
(printout t "The number is odd" crlf))
CLIPS> (assert (number 7))
<Fact-1>
CLIPS> (run)
The number is odd
CLIPS> (assert (number 4))
<Fact-2>
CLIPS> (assert (number 5))
<Fact-3>
CLIPS> (run)
The number is odd
CLIPS>





