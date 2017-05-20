(setf A (read) )
(setf B A)
(print A)

(
loop while (> A 1) do
(setf B (* B (- A 1)))
(setf A (- A 1))
)
(print B)
