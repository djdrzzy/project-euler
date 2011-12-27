
;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
;; that the 6th prime is 13.

;; What is the 10 001st prime number?

(defun euler-6 ()



(defun sieve-of-eratosthenes (n)
  (let ((nums-to-sieve (loop for i from 2 to n collect i)))
    (loop for i from 0 to (1- (length nums-to-sieve)) do
	 (let* ((element (nth i nums-to-sieve))
		(list-left (subseq nums-to-sieve (1+ i))))
	   (when list-left
	     (print (map 'list (lambda (x)
				 (when (and x
					    (eq (rem x element) 0))
				   nil))
			 list-left)))))
    nums-to-sieve))