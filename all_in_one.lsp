;;;Hello World!!!

(write-line "Hello World")               ;;i.e print "Hello World", notice brackets

(write (+ 5 2 (* 7 2 2)))                ;;i.e 5+2+7*2*2, notice prefix notation


;;;Arithmetic Expression

(write (* (+ (* 2 3)  
      (* 1 2))
      (- 2 4)))      ;;i.e prints -16
	  
	  
;;;Functions

(defun mul (x y) (* x y))

    ( write (mul 4 2))	  				;;i.e prints 8
	
;;;If condition
	
(if (> 1 2)
    (print "One is greater than Two")
    (print "Two is greater than One")     ;;prints "Two is greater than One"

)
	  
	  
;;;Conditionals

	(defun absl(x)
		(cond ((> x 0) x)
			   ((= x 0) 0)
			   ((< x 0) (- x))
	
	
			
		)
	)
	
	(write (absl (- 2 4)) )           ;;prints 2
	
	
;;;Factorial- Recursion
	
	(defun fact (n)
     
        (if (= n 0) 
             1
        
            (* n (fact (- n 1)))))
            
	(write (fact 4))                     ;;prints 24
	
	
	
;;;Output for  function (trace fact)
	
	;; Tracing function FACT.                                                                                                                                                       
1. Trace: (FACT '4)                                                                                                                                                             
2. Trace: (FACT '3)                                                                                                                                                             
3. Trace: (FACT '2)                                                                                                                                                             
4. Trace: (FACT '1)                                                                                                                                                             
5. Trace: (FACT '0)                                                                                                                                                             
5. Trace: FACT ==> 1                                                                                                                                                            
4. Trace: FACT ==> 1                                                                                                                                                            
3. Trace: FACT ==> 2                                                                                                                                                            
2. Trace: FACT ==> 6                                                                                                                                                            
1. Trace: FACT ==> 24    
	;;End trace
	
;;;Swap elements without temporary variables
	
	(defun fun (x y)
    ( let*  (  (x (+ x y))
              (y (- x y))   
              (x (- x y))   )
           (format t "x = ~D~%y = ~D" x y)
       
    )
    
    
   )
 
	(fun 3 2)                ;;Prints x=2 y=3
	
;;Read list and delete elements from list
	
	(setf A (read))      ;list
	(setf B (read))      ;list element to delete
	(delete B A)         ;ddelete list element from list(destructive)

	(print A)            ;print new list
	
	
;;;Custom sort :list
	
	(setf A (read))

	(setf N (length A))
	(setf B '())

	(
	loop while (>= N 1) do
          
         (setf B (cons (reduce #'max A) B))
          (setf A (remove (reduce #'max A) A :count 1))
          (setf N (- N 1))
	)
	(print B)
	
;;Factorial : Non-recursive approach
	
	(setf A (read) )
	(setf B A)

	(format t "Factorial of ~D is " B)

	(
		loop while (> A 1) do
		(setf B (* B (- A 1)))
		(setf A (- A 1))
	)

		(write B)

;;First n fibonacci series
	
	(setq X (read))
	(setq A 1)
	(setq B 1)
	(setq C 1)
	(setq D 1)
	(print A)
 
    (loop while (< D X) do
     
      (print C)
      (setf C (+ A B))
      
      (setf A B)
      (setf B C)
      (setf D (+ D 1))
	)-
	
;; Rewriting factorial
	
	(defun fact(Y)
    (if (= Y 1) 1 (* Y (fact(- Y 1) )) )  ) 
	(setf X (read))
	(print (fact X ))
	
	
;;Set operations: custom functions
	
	(setf A (read))
	(setf B (read))
	(setf C '())


	(format t "Union is ~D " (remove-duplicates(append A B)))
	(terpri)													;;newline


	(setf N (length A))

	(
	loop for I from 0 to N do
      ( if (member (nth I A) B) (setf C (cons (nth I A) C )) )
	) 

	(format t "Intersection is ~D " (reverse C))
	(terpri)


	(setf C '())

	(
	loop for I from 0 to (- N 1) do
     ( if (not(member (nth I A) B))  (setf C (cons (nth I A) C )) )
	)

	(format t "Set difference, A-B is ~D " (reverse C))
	
	
;;;Membership : Custom
	
	(setf A (read))    ;;List
	(setf B (read))    ;; Element to check membership
	(setf N (length A))
	(
	loop for I from 0 to (- N 1) do
	( if (equal (nth I A) B) (princ "Member"))
	)
	
	;;;Set:Symmetric difference
	
	(setf A (read))
	(setf B (read))
	(setf C ())
	(setf D ())
	(setf E B)

	(setf U (remove-duplicates(append A B)) )
	(print (remove-duplicates(append A B)))

	(setf L1 (length A))
	(setf L2 (length B))
	(
	loop for I from 1 to L1 do
   (cond
          ((member (nth I A) B) (setf C (cons (nth I A) C))  )
           ((not(member (nth I A) E)) (setf D (cons (nth I A) D))  )
          
    )                
	)

	(print C)
	(terpri)
	(format t "Symmetric difference, (A-B) U (B-A) : ~D " (set-difference U C))
	
	