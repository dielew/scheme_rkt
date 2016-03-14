#lang racket
(define (dup-rm lst)
  (cond
    [(empty? lst) empty]
    [(empty? (cdr lst)) lst]
    [else
     (let
         ([i (car lst)])
       (if (equal? i (car (cdr lst)))
           (dup-rm (cdr lst))
           (cons i (dup-rm (cdr lst)))
           ))]))
