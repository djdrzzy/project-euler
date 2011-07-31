(defun multiple-of-3-or-5? (num-to-check)
  (if  (or (eq (mod num-to-check 3) 0) (eq (mod num-to-check 5) 0))
       num-to-check
       nil))

(defun sum-of-multiples-of-3-or-5 (up-to)
  (let ((sum 0))   
  (loop for i from 1 to up-to do
       (when (multiple-of-3-or-5? i)
	 (incf sum i)))
  sum))

