(define (mark-rat n d)
    (let ((g (gcd n d)))
        (if (< d 0)
           (cons (/ (- n) g) (/ (- d)  g))
            (cons (/ n g) (/ d g))
        )
        
    )
)

(define (numer x)
    (car x))

(define (denom x)
    (cdr x))



(define (add-rat x y)
    (mark-rat (+ (* (numer x) (denom y)) 
                 (* (numer y) (denom x))  
              )
              (* (denom x) (denom y))
    )
)
(define (sub-rat x y)
    (mark-rat (- (* (numer x) (denom y)) 
                 (* (numer y) (denom x))  
              )
              (* (denom x) (denom y))
    )
)
(define (mul-rat x y)
    (mark-rat (* (numer x) (numer y)
              )
              (* (denom x) (denom y))
    )
)
(define (div-rat x y)
    (mark-rat (* (numer x) (denom y)
              )
              (* (denom x) (numer y))
    )
)

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x))
)
(define one-half (mark-rat 1 5))
(print-rat one-half)
(define one-third (mark-rat 2 -5))

(print-rat (div-rat one-half one-third))