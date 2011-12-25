;; Problem 4

;; A palindromic number reads the same both ways. The largest palindrome made 
;; from the product of two 2-digit numbers is 9009 = 91 99.

;; Find the largest palindrome made from the product of two 3-digit numbers.

;; Let's brute force this betch.

;; Looks like the result is 906609 whoot!

(defun euler-4 ()
  (let ((max 0))  
    (loop for x from 999 downto 100 do
	 (loop for y from 999 downto 100 do
	      (let ((potential-palindrome (write-to-string (* x y))))
		(when (palindromep potential-palindrome)
		  (when (> (* x y) max)
		    (setf max (* x y)))))))
    max))
  
(defun palindromep (s)
  "Takes a string and checks if it is a palindrome."
  (labels ((p-helper (l)
	     (if (< (length l) 2)
		 t 
		 (let ((e (end l))
		       (f (first l)))
		   (when (and e f (eq e f))
		     (p-helper (middle l)))))))
    (p-helper (string->list s))))

(defun string->list (s)
  (coerce s 'list))

(defun end (l)
  (car (last l)))

(defun middle (l)
  (when (> (length l) 2)
    (subseq l 1 (1- (length l)))))