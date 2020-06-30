(define (frame-coord-map frame)
    (lambda (v) 
        (add-vect 
            (origin-frame frame)
            (add-vect
                (scale-vect (xcor-vect v) (edege1 frame))
                (scale-vect (ycor-vect v) (edge2 frame))
            )
        )
    )    
)