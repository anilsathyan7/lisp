(setq X 10)
 (setq A 1)
 (setq B 1)
 (setq C 1)
 
 (print A)
 
    (loop for I from 1 to (- X 1) do
     
      (print C)
      (setf C (+ A B))
      
      (setf A B)
      (setf B C)
      
)
