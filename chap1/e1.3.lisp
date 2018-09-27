; Function COUNT-ATOMS whichs counts the atoms in a list and it's sub-lists.
(defun count-atoms (l)
  (cond ((null l) 0)
	((atom l) 1)
	(t (+ (count-atoms (car l))
	      (count-atoms (cdr l))))))
