; Exercise 9 chapter 3.
; A version of function LENGTH using function REDUCE.
(defun length-reduce (l)
  (reduce #'(lambda (x y)
	      (if (atom y) (1+ x)))
	  l :initial-value 0))
