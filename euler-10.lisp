;; Problem 10

;; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

;; Find the sum of all the primes below two million.

;; Result should be: 142913828922

;; Sieve function from: http://rosettacode.org/wiki/Sieve_of_Eratosthenes

(defun euler-10 ()
  (reduce #'+ (sieve-of-eratosthenes 2000000)))

(defun sieve-of-eratosthenes (maximum) 
  (cons 2 
	(let ((maxi (floor (/ (- maximum 1) 2))))
	  (let ((sieve (make-array (1+ maxi) 
				   :element-type 'bit 
				   :initial-element 0)))
	    (loop for i from 1 to maxi
	       when (zerop (bit sieve i))
	       collect (+ (* 2 i) 1)
	       and do (loop for j from (* 2 i (+ i 1)) 
			 to maxi by (+ (* 2 i) 1)
			 do (setf (bit sieve j) 1)))))))
