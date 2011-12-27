
;; Works but slow as fuck
(defun sieve-of-eratosthenes (n)
  (let ((nums-to-sieve (loop for i from 2 to n collect i)))
    (loop for i from 0 to (1- (length nums-to-sieve)) do
	 (let ((element (nth i nums-to-sieve))
	       (list-left (subseq nums-to-sieve (1+ i))))
	   (when list-left
	     (print i)
	     (loop for j from (1+ i) to (1- (length nums-to-sieve)) do
		  (let ((sub-element (nth j nums-to-sieve)))
		    (when (and sub-element
			       element
			       (eq (rem sub-element element) 0))
		      (setf (nth j nums-to-sieve) nil)))))))
    (remove-if #'null nums-to-sieve)))