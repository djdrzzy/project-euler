;; Problem 6

;; Find the difference between the sum of the squares of the first one hundred
;; natural numbers and the square of the sum.

;; Solution is 25164150

(defun euler-6 ()
  (- (square-of-sums 1 100) (sum-of-squares 1 100)))

(defun sum-of-squares (s e)
  (reduce #'+ (loop for i from s to e collect (* i i))))

(defun square-of-sums (s e)
  (let ((sum (reduce #'+ (loop for i from s to e collect i))))
    (* sum sum)))