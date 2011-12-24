;; Problem 3

;; The prime factors of 13195 are 5, 7, 13 and 29.

;; What is the largest prime factor of the number 600851475143?

;; In number theory, the prime factors of a positive integer are the prime
;; numbers that divide that integer exactly, without leaving a remainder.


;; So we need to check all the numbers and for every number that divides into
;; our number to check we check if it is prime.




;; So we have verified that this works... We just need to somehow trim all
;; the numbers that we iterate over... or get a super powerful computer.

(defun euler-3 ()
  (let ((max 600851475143))
    (loop for i downfrom (ceiling (/ max 2)) to 1
       when (and (zerop (rem max i))
		 (primep i))
       return i)))





(defun primep (num)
  (eq 1 (length (loop for i from 1 to (floor (sqrt num))
		   when (zerop (rem num i))
		   collect i))))

