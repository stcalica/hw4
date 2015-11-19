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
	( group_help l () n)
)

(defun group_help(l itrm n)
	(cond		
		((and (null l) (null itrm)) nil)
		((null l) (list itrm))
		((equal (length itrm) n) (cons itrm (group_help l nil n)))	
		((<	(length itrm) n) (group_help (cdr l) (append itrm (list (car l))) n))
;		((equal (length itrm) n) (cons itrm  group_help( l (cons()) n)))  
;		((>	(length itrm) n) funcall group_help( cdr l (append itrm (list (car l)) n)))
	)
)


(defun splitLeft(f l)
	(cond
		((null l) nil)
		((equal nil (funcall f (car l)) ) (append (list (car l)) (splitLeft f (cdr l)))) 
 		((equal t (funcall f (car l))) (splitLeft f (cdr l)))	
	)
)

(defun splitRight(f l)	
	(cond
		((null l) nil)
		((equal t (funcall f (car l)) ) (append (list (car l)) (splitRight f (cdr l)))) 
 		((equal nil (funcall f (car l))) (splitRight f (cdr l)))		
	)
)

(defun split-if (f l)
	(list (splitLeft f l) (splitRight f l)) ;left will have t, right will have nil
)	


(defun mostn(f l)

	(setq r (mapcar f l));apply f to all l
	(setq m	(apply 'max r));get max of results
	(list(mostn_help m f l) m)

)

(defun mostn_help(m f l) 
	(cond
		((null l) nil) ;reached end of list
		((equal m  (funcall f (car l) ) )   (cons (car l) (mostn_help m f (cdr l)))  ) ;if result on function == max, add to result list
		(t  (mostn_help m f (cdr l)) ) ;if result != max, keep running helper on rest of l
	)

)

(defun match(pat ass)
	(cond
		( (or (null pat) (null ass)) 		(equal pat ass) )
		( (equal '? (car pat)) 			(match (cdr pat)(cdr ass)) )
		( (and (equal '! (car pat)) 
			(match (cdr pat)(cdr ass))) 	T )
		( (equal '! (car pat)) 			(match pat (cdr ass)) )
		( t					(and (equal (car pat) (car ass)) (match (cdr pat) (cdr ass)) ))
	)
)
(defun match-var(pat ass)
	(cond
		( (or (null pat) (null ass)) 		(equal pat ass) )
		( (equal '? (car pat)) 			(match-var(cdr pat)(cdr ass)) )
		( (and (equal '! (car pat)) (match (cdr pat)(cdr ass))) 	T )
		( (equal '! (car pat)) 	(match-var pat (cdr ass)) )
		( (equal  (car pat) '?)  (setq (car pat) (car ass) )  match-var (cdr pat) (cdr ass)   T	) 
		( (equal  (car pat) '!) and ( match-var (cdr ( cons (car ass)   pat) ) (cdr ass) )	   T	)
		( t (and (equal (car pat) (car ass)) (match-var (cdr pat) (cdr ass)) ))
	)
)
