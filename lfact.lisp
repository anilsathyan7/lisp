(defun fact(Y)
    (if (= Y 1) 1 (* Y (fact(- Y 1) )) )  ) 
(setf X (read))
(print (fact X ))
