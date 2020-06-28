(load "./di-er-zhang/2.18.scm")
(define (deep-reverse table result)
     (if (null? table)
        result
        (deep-reverse (cdr table)
              (cons (reverse (car table)) result)))    
)

(define (deep table)
    (deep-reverse table '())
)
(define x (list  (list 1 2 9) (list 3 4) (list 5 8)))

(display (deep x))

; (define (tree-reverse lst)
;     (define (iter remained-items result)
;         (if (null? remained-items)
;             result
;             (iter (cdr remained-items)
;                   (cons (if (pair? (car remained-items))
;                             (tree-reverse (car remained-items))
;                             (car remained-items))
;                         result))))
;     (iter lst '()))