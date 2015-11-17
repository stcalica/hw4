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
                ((equal a (car l) ) cons (car l) (after_a b (cdr l)))
                (t (before a b (cdr l)) )
        )

)
(defun split-if(fun l)
)

(defun group(l n)
)


(defun mostn(f l)

	(setq l (mapcar #'f l))
	(setq m (max l) )
	(mostn_help m f l)

)

(defun mostn_help(m f l) 
	(cond
		((null l) nil) 
		((equal m  (funcall f (car l) ) )   cons( (car l) (mostn_help m f (cdr l))) )
		(t  (mostn_help m f (cdr l)) ) 
	)

)
