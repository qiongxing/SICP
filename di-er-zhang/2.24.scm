; (define (try-pair lst )
;     (iter lst '())
; )   
; (define (iter lst result)
;     (if (null? lst)
;         result
;         (iter (cdr lst) (cons (car lst) result)
;         )
;     )
; )

(display  (list 1 (list 2  (list 3 4))))