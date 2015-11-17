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

(defun before(a b l)
)

(defun split-if(fun l)	
)

(defun group_help(l itrm n)
	(cond
		((null l) itrm);return itrm
		((length itrm) (+ (itrm)(group_help(l list(empty_list null) n)) ()))
		(t (group_help((cdr l) (setq itrm (+ (car l) itrm)) n)))
	)
)

(defun group(l n)
	(loop for x in l
		do(
			(group_help(l x n)
		)
	)
)

(defun mostn(f l)
)
