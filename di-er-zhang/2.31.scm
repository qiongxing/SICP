(load "./scheme.helper.scm")
; (define (square-tree tree)
;     (cond 
;         ((null? tree) '())
;         ((not (pair? tree)) (* tree tree))
;         (else (cons (square-tree (car tree) ) (square-tree (cdr tree))))
;     )    
; )
(define x (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define (square-tree-map tree)
    (tree-map square tree)  
)
(define (tree-map operate tree)
    (map 
        (lambda (sub-tree) 
            (if (pair? sub-tree)
                (tree-map operate sub-tree)
                (operate sub-tree)
            )
        )
    tree)    
)
(display (square-tree-map x))