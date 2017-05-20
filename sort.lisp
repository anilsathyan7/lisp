(setf A (read))

(setf N (length A))
(setf B '())

(
loop while (>= N 1) do
          
         (setf B (cons (reduce #'max A) B))
          (setf A (set-difference A B))
          (setf N (- N 1))
)
(print B)
------------------------------
(setf A (read))
(setf N (length A))
(setf E (read))
(
loop for I from 0 to N do
    (cond
          ((equal (nth I A) E)  (print "element present"))
         
    )
(return)
(
)
