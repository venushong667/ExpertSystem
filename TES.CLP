(defrule welcome
   (initial-fact)
   =>
   (printout t "Welcome To Medical ES! Please tell me your name." crlf)
   (assert (username (readline))))

(defrule fever
   (username ?name)
   =>
   (printout t "Hello Mr/s."?name ", Do you have fever? y/n" crlf)
   (assert (fever (readline))))

(defrule cough
   (username ?name)
   (fever ?)
   =>
   (printout t "Mr/s."?name ", Do you have cough? y/n" crlf)
   (assert (cough (readline))))

(defrule headache
   (username ?name)
   (cough ?)
   =>
   (printout t "Mr/s."?name ", Do you have headache? y/n" crlf)
   (assert (headache (readline))))

(defrule sneezing
   (username ?name)
   (headache ?)
   =>
   (printout t "Mr/s."?name ", Do you have sneezing? y/n" crlf)
   (assert (sneezing (readline))))

(defrule sore-throat
   (username ?name)
   (sneezing ?)
   =>
   (printout t "Mr/s."?name ", Do you have sore throat? y/n" crlf)
   (assert (sore-throat (readline))))

(defrule runny-nose
   (username ?name)
   (sore-throat ?)
   =>
   (printout t "Mr/s."?name ", Do you have runny nose? y/n" crlf)
   (assert (runny-nose (readline))))

(defrule body-ache
   (username ?name)
   (runny-nose ?)
   =>
   (printout t "Mr/s."?name ", Do you have body ache? y/n" crlf)
   (assert (body-ache (readline))))

(defrule rash
   (username ?name)
   (body-ache ?)
   =>
   (printout t "Mr/s."?name ", Do you have rash? y/n" crlf)
   (assert (rash (readline))))


(defrule mumps
   (username ?name)
   (and (fever "y")
	(swollen-gland "y"))
   =>
   (printout t "Mr/s."?name ", you probably have mumps." crlf))

(defrule common-cold
   (username ?name)
   (fever "n")
   (cough "n")   
   (headache "y")
   (sneezing "y")
   (sore-throat "y")
   (runny-nose "y")
   (body-ache "n")
   (rash "n")
   =>
   (printout t "Mr/s."?name ", you probably have common cold." crlf))

(defrule measles
   (username ?name)
   (fever "y")  
   (headache "n")
   (sneezing "n")
   (sore-throat "y")
   (runny-nose "y")
   (cough "y")
   (body-ache "y")
   (rash "y")
   =>
   (printout t "Mr/s."?name ", you probably have measles." crlf))

(defrule flu
   (username ?name)
   (fever "y")
   (cough "y")   
   (headache "y")
   (sneezing "n")
   (sore-throat "y")
   (runny-nose "y")
   (body-ache "y")
   (rash "n")
   =>
   (printout t "Mr/s."?name ", you probably have flu." crlf))

(defrule chicken-pox
   (username ?name)
   (fever "y")
   (cough "n")   
   (headache "y")
   (sneezing "n")
   (sore-throat "n")
   (runny-nose "n")
   (body-ache "y")
   (rash "y")
   =>
   (printout t "Mr/s."?name ", you probably have chicken pox." crlf))

(defrule chicken-pox
   (username ?name)
   (fever "n")
   (cough "n")   
   (headache "n")
   (sneezing "n")
   (sore-throat "n")
   (runny-nose "n")
   (body-ache "n")
   (rash "n")
   =>
   (printout t "Mr/s."?name ", you are healthy!" crlf))

