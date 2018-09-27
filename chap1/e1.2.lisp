; Function POWER raise a number to an integer power.
; Version 1.
(defun power (b e)
  (if (zerop e) 1
    (let ((r (power b (floor e 2))))
      (if (zerop (mod e 2))
	(* r r)
	(* b r r)))))

; Version 2.
(defun power-v2 (b e)
  (cond ((zerop e) 1)
	((zerop (mod e 2)) (power-v2 (* b b) (floor e 2)))
	(t (* b (power-v2 (* b b) (floor e 2))))))
