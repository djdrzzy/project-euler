;; Problem 5

;; 2520 is the smallest number that can be divided by each of the numbers from 1
;; to 10 without any remainder.

;; What is the smallest positive number that is evenly divisible by all of the
;; numbers from 1 to 20?

;; Hunh! So turns out we can brute force it fairly quickly.

;; Solution should be 232792560

(defun euler-5 ()
  (loop for i from 20 by 20 do
       (let ((l (loop for j from 1 to 20
		   collect (rem i j))))
	 (when (zerop (length (remove-if #'zerop l)))
	   (return-from euler-5 i)))))