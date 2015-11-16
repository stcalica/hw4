(defun all-length (l)
	
	(cond 
		((null l) print nil) 
		;(listp (car l)) (+ all-length (car l) all-length(cdr l) )  (+ (+ 1 (all-length(cdr l)) 
	)

	(loop for x in l 
		do(
		print x
		) ; evaluates l to ( 1 2 3 ) before being printed out
	)

)
(setq l nil) ; doesnt eval (1 2 3) just stores it to l  

(all-length l)  ; sends l by evaluating that it is a list 
