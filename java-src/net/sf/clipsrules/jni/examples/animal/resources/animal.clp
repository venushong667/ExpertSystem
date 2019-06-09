;;;***************************
;;;* DEFFACTS KNOWLEDGE BASE *
;;;***************************

(deffacts MAIN::knowledge-base

   (welcome (message WelcomeMessage))
   (goal (variable type.disease))
   (legalanswers (values yes no))


   (rule (if s1 is yes) 
         (then fever is yes))
   (rule (if s1 is no) 
         (then fever is no))
   (question (variable s1)
             (query s1.query))

   (rule (if s2 is yes) 
         (then cough is yes))
   (rule (if s2 is no) 
         (then cough is no))
   (question (variable s2)
             (query s2.query))
 
   (rule (if s3 is yes) 
         (then headache is yes))
   (rule (if s3 is no) 
         (then headache is no))
   (question (variable s3)
             (query s3.query))

   (rule (if s4 is yes) 
         (then sneezing is yes))
   (rule (if s4 is no) 
         (then sneezing is no))
   (question (variable s4)
             (query s4.query))
	
   (rule (if s5 is yes) 
         (then sore-throat is yes))
   (rule (if s5 is no) 
         (then sore-throat is no))
   (question (variable s5)
             (query s5.query))

   (rule (if s6 is yes) 
         (then runny-nose is yes))
   (rule (if s6 is no) 
         (then runny-nose is no))
   (question (variable s6)
             (query s6.query))

   (rule (if s7 is yes) 
         (then body-ache is yes))
   (rule (if s7 is no) 
         (then body-ache is no))
   (question (variable s7)
             (query s7.query))

   (rule (if s8 is yes) 
         (then rash is yes))
   (rule (if s8 is no) 
         (then rash is no))
   (question (variable s8)
             (query s8.query))


   (rule (if headache is yes and 
	  sneezing is yes and 
	  sore-throat is yes and 
	  runny-nose is yes) 
	 (then type.disease is common-cold))
 
   (rule (if fever is yes and 
	  cough is yes and 
	  sore-throat is yes and 
	  runny-nose is yes and 
	  rash is yes) 
	 (then type.disease is measles))

   (rule (if fever is yes and 
	  cough is yes and 
	  headache is yes and 
	  sore-throat is yes and 
	  runny-nose is yes and 
	  body-ache is yes) 
	 (then type.disease is flu))

   (rule (if fever is yes and 
	  headache is yes and 
	  body-ache is yes and  
	  rash is yes) 
	 (then type.disease is chicken-pox))





   (answer (variable type.disease)))
