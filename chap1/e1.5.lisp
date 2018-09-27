; Function DOT-PRODUCT calculates the dot product.
(defun dot-product (seq1 seq2)
  (apply #'+ (mapcar #'* seq1 seq2)))
