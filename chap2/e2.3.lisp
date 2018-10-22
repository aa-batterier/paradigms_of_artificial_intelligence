; Exercise 3 chapter 2.
; Function CROSS-PRODUCT is a general function on the cross-product of the argument list.
(defun cross-product (fn xlist ylist)
  (mappend #'(lambda (y)
	       (mapcar #'(lambda (x) (funcall fn x y))
		       xlist)
	       ylist)))

; Function COMBINE-ALL modified with the function CROSS-PRODUCT.
(defun combine-all (xlist ylist)
  "Return a list of lists formed by appending a y to an x.
  E.g., (combine-all '((a) (b)) '((1) (2))) -> ((A 1) (B 1) (A 2) (B 2))."
  (cross-product #'append xlist ylist))

; Function MAPPEND.
(defun mappend (fn &rest lsts)
  (apply #'append (apply #'mapcar fn lsts))) 
