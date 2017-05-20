(setf A (read))
(setf B (read))
(setf N (length A))
(
 loop for I from 0 to (- N 1) do
 ( if (equal (nth I A) B) (princ "Member") )
)
