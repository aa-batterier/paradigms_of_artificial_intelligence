; Exercise 12 chapter 3.
; Prints a list of words as a sentence.
(defun sentence (wl)
  (format t "~@(~{~a~^ ~}.~)" wl))
