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

(defun before(a b l)
)

(defun split-if(fun l)
)

(defun group(l n)
)

(defun mostn(f l)
)
