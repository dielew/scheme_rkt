#lang racket
(define (pascal-tri row col )
  (cond
    [(equal? col 1) 1]
    [(equal? row col) 1]
    [else
     (+ (pascal-tri (- row 1) col) (pascal-tri (- row 1) (- col 1)))]
   
  )
)

