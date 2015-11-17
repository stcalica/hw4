;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Your solution goes in this file ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
(defun all-length (l)
	(cond
		((null l) 0)
		((listp (car l)) (+ (all-length(car l)) (all-length(cdr l))) ) ; (+ (+ 1 (all-length(cdr l)))) ) 
		(t (+ 1 (all-length(cdr l))))
	)

)

(defun range(l)
	(list (apply 'min l) (apply 'max l))
)

(defun after_a(b l)
	(cond
		((null l) nil)
		((equal (car l) b) (list (car l)))
		(t (cons (car l) (after_a b (cdr l)) ))
	)	
)
(defun before (a b l) 
        (cond
                ((null l) nil)
                ((equal a (car l) ) (cons (car l) (after_a b (cdr l))))
                (t (before a b (cdr l)) )
        )
)

(defun group_help(l itrm n)
	(cond
		((null l) itrm);return itrm
		((equal (length itrm) n) (cons (itrm)(group_help(l list(empty_list null) n)) ))
		(t (group_help((cdr l) (setq itrm (cons (car l) itrm)) n)))
	)
)

(defun split-if(fun l)

)

(defun group(l n)
	(loop for x in l
		do(
			;(group_help(l x n))
		)
	)
)

(defun mostn(f l)
)
