; Function COUNT-ANYWHERE counts the number of times an expression appears in another expression.
(defun count-anywhere (e1 e2)
  "Looks for expression 1 in expression 2 and counts the appearenses."
  (cond ((and (atom e2) (not (equal e1 e2))) 0)
	((equal e1 e2) 1)
	(t (+ (count-anywhere e1 (car e2))
	      (count-anywhere e1 (cdr e2))))))
