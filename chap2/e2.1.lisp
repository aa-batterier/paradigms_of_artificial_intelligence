; Exercise 1 chapter 2.
; Function GENERATE rewritten with only one call to rewrites.
(defun generate (phrase)
  "Generate a random sentence or phrase"
  (let ((choices (rewrites phrase)))
    (cond ((listp phrase) (mappend #'generate phrase))
	  (choices (generate (random-elt (rewrites phrase))))
	  (t (list phrase)))))

; Help code from the book Paradigms of Artifcial Intelligence Programming Case Studies in Common Lisp
; by Peter Norvig to test the above function.
(defun random-elt (choices)
  "Choose an element from a list at random."
  (elt choices (random (length choices))))

(defparameter *simple-grammar*
  '((sentence -> (noun-phrase verb-phrase))
    (noun-phrase -> (article noun))
    (verb-phrase -> (verb noun-phrase))
    (article -> the a)
    (noun -> man ball woman table)
    (verb -> hit took saw liked))
  "A grammar for a trivial subset of English.")

(defun rule-lhs (rule)
  "The left-hand side of a rule."
  (first rule))

(defun rule-rhs (rule)
  "The right-hand side of a rule."
  (rest (rest rule)))

(defun rewrites (category)
  "Return a list of the possible rewrites for this category."
  (rule-rhs (assoc category *grammar*)))

; Function MAPPEND is referenced in the book and used by the author in the code above,
; but MAPPEND doesn't exist in lisp, so I have added MAPPEND here from the source:
; https://common-lisp.net/project/bdb/qbook/mycl-util/api/function_005FMYCL-UTIL_003A_003AMAPPEND.html
(defun mappend (fn &rest lsts)
  "Maps elements in list and finally appends all resulted lists."
  (apply #'append (apply #'mapcar fn lsts)))
