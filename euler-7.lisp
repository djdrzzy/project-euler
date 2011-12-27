
;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
;; that the 6th prime is 13.

;; What is the 10 001st prime number?

;; Result should be 104743

(defun euler-7 ()
  (first (multiple-value-list (nth-prime 10001))))


;; We could turn that not any into a loop... and then up to the sqrt of the 
;; n we are checking. That would cut our time down a lot...  
(defun nth-prime (n)
  (let ((set-of-primes (make-array n 
				   :element-type 'fixnum 
				   :initial-element 2))
	(array-index 1)
	(current-prime 2)
	(num-to-check 3)
	(slice-to-check nil))
    (loop
       (setf slice-to-check (subseq set-of-primes 0 (round (sqrt n))))
       (when (notany #'(lambda (p) 
			 (zerop (rem num-to-check p))) 
		     slice-to-check)
	 (setf (aref set-of-primes array-index) num-to-check)
	 (setf array-index (1+ array-index))
	 (setf current-prime num-to-check))
       (when (eq array-index n)
	 (return-from nth-prime (values current-prime set-of-primes)))
       (setf num-to-check (1+ num-to-check)))))

