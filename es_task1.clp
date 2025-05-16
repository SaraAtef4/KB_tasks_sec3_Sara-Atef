         CLIPS (6.30 3/17/15)
CLIPS>  ( deftemplate animal (slot name) (slot type))
CLIPS> (defrule chech-animal
( animal (name ?name) (type ?type&~dog&~cat))
=>
(printout t ?name "is a" ?type crlf))
CLIPS> (assert (animal (name toty) (type cat)))
<Fact-1>
CLIPS> (run)
CLIPS> (assert (animal (name faras) (type hourse)))
<Fact-2>
CLIPS> (run)
farasis ahourse
CLIPS> 
