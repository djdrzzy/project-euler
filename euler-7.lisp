
;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
;; that the 6th prime is 13.

;; What is the 10 001st prime number?

;; Result should be 104743

(defun euler-7 ()
  (first (multiple-value-list (nth-prime 1000000))))

(defun nth-prime (n)
  (let ((set-of-primes (make-array n :element-type 'fixnum :initial-element 2))
	(array-index 1)
	(current-prime 2)
	(num-to-check 3))
    (loop
       (when (loop for i from 0 to (round (sqrt array-index))
		never (zerop (rem num-to-check (aref set-of-primes i))))
	 (setf (aref set-of-primes array-index) num-to-check)
	 (setf array-index (1+ array-index))
	 (setf current-prime num-to-check))
       (when (eq array-index n)
	 (return-from nth-prime (values current-prime set-of-primes)))
       (setf num-to-check (1+ num-to-check)))))

