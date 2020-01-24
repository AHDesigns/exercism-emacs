;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:

(defun difference (value)
  (- (square-of-sum value) (sum-of-squares value)))

(defun square-of-sum (value)
  (expt
   (seq-reduce '+ (number-sequence 1 value) 0)
   2))

(defun sum-of-squares (value)
  (seq-reduce
   (lambda (tot val) (+ tot (* val val)))
   (number-sequence 1 value) 0))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
