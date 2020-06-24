(define lst1 (list 1 3 (list 5 7) 9))
(define y (list (list 7)))
(define lst3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7))) ))))
(display lst1)
(newline)
(display y)
(newline)

(display (cadadr lst3))
(newline)


; 勉强只适用lst1情况
(define (find-seven lst)
    (cond
        ((not (pair? lst)) 1)
        ((eqv? (car (cdr lst))  7) (cdr lst) )
        ((pair? (car lst)) (find-seven (car lst)))
        (else
            (find-seven (cdr lst))
        )
    )
)

(display (find-seven lst1))
; (display (car (cdr (list 5 7))))
