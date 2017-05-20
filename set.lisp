(setf A (read))
(setf B (read))
(setf C ())
(setf D ())
(setf E B)
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
(print (reduce #'remove C A))
