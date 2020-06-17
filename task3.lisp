(defun compress (seq &optional (c 1))
  (cond
    ((null seq) nil)
    ((eq (car seq) (cadr seq)) (compress (cdr seq) (1+ c)))
    ((> c 1) (cons (cons (car seq) (list c)) (compress (cdr seq))))
    (t (cons (car seq) (compress (cdr seq))))))
 
(print (compress '(1 1 1 0 1 0 0 0 0 1 a b b b c c c d d)))

(defun decompress (lst &optional (c 0))
  (cond
    ((null lst) nil)
    ((atom (car lst)) (cons (car lst) (decompress (cdr lst))))
    ((if (< c (cadar lst))
         (cons (caar lst) (decompress lst (1+ c)))
         (decompress (cdr lst))))))
 
(print (decompress '((1 3) 0 1 (0 4) 1 a (b 3) (c 3) (d 2))))