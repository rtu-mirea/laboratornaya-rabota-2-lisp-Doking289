(defun insert (pos lst el)
    (nconc (subseq lst 0 pos) (cons el (subseq lst pos))))

(defconstant L (list 5 1 4 2 9 12 432 1 3 2))

(insert 2 L 56)

(print (insert 1 L 56))

(defun delete (pos lst)
    (nconc (subseq lst 0 pos) (subseq lst (+ 1 pos))))

(print (delete 4 L))

(defun find (x lst)
    (cond ((null lst) nil)
    ((eql x (car lst)))
    (t (find x (cdr lst)))
    ))

(print (find 56 (insert 2 L 56)))

(print (find 2 L))

(print (find 54 (insert 2 L 56)))

(print (find 10 L))