(setf A (read))
(setf B (read))
(setf C '())

(print(remove-duplicates(append A B)))

(setf N (length A))

(
 loop for I from 0 to N do
      ( if (member (nth I A) B) (setf C (cons (nth I A) C )) )
)      
(print (reverse C))

(setf C '())

(
 loop for I from 0 to (- N 1) do
     ( if (not(member (nth I A) B))  (setf C (cons (nth I A) C )) )
)
(print (reverse C))
