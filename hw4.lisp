;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Your solution goes in this file ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
(defun all-length (l)
	(cond
		((null l) 0)
		((listp (car l)) (+ (all-length(car l)) (all-length(cdr l))) ) ; (+ (+ 1 (all-length(cdr l)))) ) 
		(t (+ 1 (all-length(cdr l)))))

)

(defun range(l)
	(list (apply 'min l) (apply 'max l))
)

(defun after_a(a b seen_a l)
	(cond
		((null l) null)
		((and seen_a (equal b (car l))) (car l))
		(seen_a (cons (car l) (after_a a b t (cdr l))))
		((t) (after_a a b t (cdr l)))
	)	
)
(defun before (a b l) 
        (cond
                ((null l) null)
                ((equal a (car l) ) (after_a a b t l))
                (t null)
        )

)
(defun split-if(fun l)
)

(defun group(l n)
)

(defun mostn(f l)
)
