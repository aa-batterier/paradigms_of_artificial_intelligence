; Exercise 3 chapter 3.
; Function PRINT-DOT prints expessions in dotted pair notation.
(defun print-dot (l)
  (cond ((null l) (princ "nil"))
	(t (princ "(")
	   (princ (first l))
	   (princ " . ")
	   (print-dot (rest l))
	   (princ ")"))))
