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

(defun group(l n)
	(loop for x in l
		do(
			;(group_help(l x n))
		)
	)
)

(defun group_help(l itrm n)
	(cond
		((null l) itrm);return itrm
		;((equal (length itrm) n) (cons (itrm)(group_help(l list(empty_list null) n)) ))
		;(t (group_help((cdr l) (setq itrm (cons (car l) itrm)) n)))
	)
)


(defun splitLeft(f l)
	(cond
		((null l) nil)
		((equal nil (funcall f (car l)) ) (cons (car l) (splitLeft f (cdr l)))) 
 		
	)
)

(defun splitRight(f l)	
	(cond
		((null l) nil)
		((equal T (funcall f (car l)) ) (cons (car l) (splitRight f (cdr l)))) 
 		
	)
)

(defun split-if (f l)
	
	;(mapcar f l)
	(list (splitLeft f l) (splitRight f l)) ;left will have t, right will have nil
	
)	

(defun mostn(f l)
)
