; Program that takes out the last name from a list.

(defvar *titles* '(md jr))

(defun last-name (l)
  (let ((name (reverse l)))
    (if (member (first name) *titles*) (second name) (first name))))
