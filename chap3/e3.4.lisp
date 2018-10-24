; Exercise 4 chapter 3.
; Function MY-PRINT-LIST prints a list and if necessary while print it in dotted pair notation.
(defun my-print-list (l)
  (labels ((help (the-list)
	     (cond ((null the-list) (princ ")"))
		   ((atom the-list) (princ " . ")
				    (princ the-list)
				    (princ ")"))
		   (t (princ " ")
		      (princ (first the-list))
		      (help (rest the-list))))))
    (princ "(")
    (princ (first l))
    (help (rest l))))
