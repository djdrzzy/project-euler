;; Problem 1

;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
;; get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.

;; Result should be 233168

(defun euler-1 ()
  (sum-of-multiples-of-3-or-5 1000))

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

