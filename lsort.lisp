(setf A (read))
(setf C '())
(setf N (length A))

(
 loop for I from 0 to (- N 1) do
     ( setf C (cons (reduce #'min  A) C) )
    (setf A (remove (reduce #'min  A) A))
)
(print (reverse C))
