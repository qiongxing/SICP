; (define (equal? lst1 lst2)
;     (cond 
;         ((list-equal? lst1 lst2) #t)
;         ((eq? (car lst1) (car lst2)) (equal? (cdr lst1) (cdr lst2)))
;         (else #f)
;     )    
; )


(define (equal? x y)
    (cond ((and (symbol? x) (symbol? y))
            (symbol-equal? x y))
          ((and (list? x) (list? y))
            (list-equal? x y))
          (else
            #f)))

(define (symbol-equal? x y)
    (eq? x y))

(define (list-equal? x y)
    (cond ((and (null? x) (null? y))    ; 空表
            #t)
          ((or (null? x) (null? y))     ; 长度不同的表
            #f)
          ((equal? (car x) (car y))     ; 对比 car 部分
            (equal? (cdr x) (cdr y)))   ; 递归对比 cdr 部分
          (else
            #f)))

(display (equal? '(this is a list) '(this is a list t)))
(display (equal? '(this is a list) '(this (is a) list)))