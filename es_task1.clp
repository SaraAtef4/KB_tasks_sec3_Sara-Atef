CLIPS> (deftemplate animal
(slot type (type SYMBOL) (allowed-values dog cat horse rabbit bird)))
CLIPS> (defrule check_animal
(animal (type ?t))
(test (and (neq ?t dog) (neq ?t cat)))
   =>
   (printout t "This animal is a " ?t crlf))
CLIPS> (assert (animal (type dog)))
<Fact-1>
CLIPS> (assert (animal (type rabbit)))
<Fact-2>
CLIPS> (assert (animal (type horse)))
<Fact-3>
CLIPS> (run)
This animal is a horse
This animal is a rabbit
CLIPS> (assert (animal (type cat)))
<Fact-4>
CLIPS> (run)
CLIPS>
