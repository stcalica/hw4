;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Your solution goes in this file ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
(defun all-length (l)
	
	(cond 
		((null l)) 
		;(listp (car l)) (+ all-length (car l) all-length(cdr l) )  (+ (+ 1 (all-length(cdr l)) 
	)

	(loop for x in l 
		do(
		print x
		) ; evaluates l to ( 1 2 3 ) before being printed out
	)

)
;(setq l nil) ; doesnt eval (1 2 3) just stores it to l  

;(all-length l)  ; sends l by evaluating that it is a list 

(defun range(l)
)

(defun before(a b l)
	(cond 
		((null l) null)
		((equal a (car l) ) before_help a b t l)
		(t null)
	)
	
)
(defun before_help(a b seen_a l)
	(cond
		((null l) null)
		(seen_a and (equal b car l) car l )
		((seen_a) (append l (before_help a b t cdr l)))
		((t) before_help a b seen_a cdr l)
	)	

)
(defun split-if(fun l)
)

(defun group(l n)
)

(defun mostn(f l)
)
