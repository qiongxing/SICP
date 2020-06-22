; (define (A x y)
;     (cond ((= y 0) 0)
;           ((= x 0) (* 2 y))
;           ((= y 1) 2)
;           (else (A (- x 1) (A x (- y 1))))
;           ))

; (display (A 1 10))

; 币种转换
(define (count-change amount)
    (cc amount 5))

(define (cc amount kind-of-coins);10  5
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kind-of-coins 0)) 0)
          (else (+ 
                (cc amount (- kind-of-coins 1));10 4
                (cc (- amount (first-denomination kind-of-coins)) kind-of-coins);0
                ))
    ))

(define (first-denomination kind-of-coins)
    (cond ((= kind-of-coins 1) 1)
        ((= kind-of-coins 2) 5) 
        ((= kind-of-coins 3) 10)
        ((= kind-of-coins 4) 25)
        ((= kind-of-coins 5) 50)
        
        ))

(display (cc 10 (- kind-of-coins 1)));5*2 5+1*5 1*10
(exit)



