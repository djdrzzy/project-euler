;; Problem 5

;; 2520 is the smallest number that can be divided by each of the numbers from 1
;; to 10 without any remainder.

;; What is the smallest positive number that is evenly divisible by all of the
;; numbers from 1 to 20?

;; This should be brute force-ible as well...?

;; Up to 18 is doable... 19 is taking a long time... Lets go get a drink... Nope
;; still going. Durn.

(defun euler-5 ()
  (loop for i from 1 do
       (let ((l (loop for j from 1 to 19
		   collect (rem i j))))
	 (when (zerop (length (remove-if #'(lambda (x) (eq x 0)) l)))
	   (return-from euler-5 i)))))