;; Problem 3

;; The prime factors of 13195 are 5, 7, 13 and 29.

;; What is the largest prime factor of the number 600851475143?

;; In number theory, the prime factors of a positive integer are the prime
;; numbers that divide that integer exactly, without leaving a remainder.

;; Result should be 6857

(defun euler-3 ()
  (apply 'max (list-of-prime-factors-for-number 600851475143)))

(defun list-of-prime-factors-for-number (n)
  "Returns all the prime factors for a given number."
  (multiple-value-bind (p r) (factor-out-prime n)
    (if (eq r 1)
	(cons p nil)
	(cons p (list-of-prime-factors-for-number r)))))

(defun factor-out-prime (n)
  "Pass in a number |n| and we return 2 values. The first prime we found and 
then the resulting number."
  (loop for i from 2 to n
     when (and (zerop (rem n i))
	       (primep i))
     return (values i (/ n i))))

(defun primep (num)
  "A naive way to check if a number is prime. Naive and slow..."
  (eq 1 (length (loop for i from 1 to (floor (sqrt num))
		   when (zerop (rem num i))
		   collect i))))

