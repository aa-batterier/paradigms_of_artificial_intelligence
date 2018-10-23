; Let* expression.
(defun let-expression ()
  (let* ((x 6)
	 (y (* x x)))
    (+ x y)))

; Exercise 1 chaper 3.
; Creating a lambda expression equivalent to the above let* expression.
(defun lambda-expression ()
  (funcall #'(lambda (x)
	       (funcall #'(lambda (y)
			    (+ x y))
			(* x x)))
	   6))
