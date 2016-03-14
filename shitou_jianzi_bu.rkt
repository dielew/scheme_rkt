#lang racket

(define shitou
  (lambda (your_card)
    (let*
        (
        [p2 (random 3)]
        [diff (- your_card p2)]
        )

        (cond
        [(equal? 0 diff) "Draw!"]
        [(equal? 1 diff) "You Wins!"]
        [(equal? -1 diff) "Com Wins!"]
        [(equal? -2 diff) "You Wins!"]
        [(equal? 2 diff) "Com Wins!"]
        [else "Your input is out of range! Valid range[0,2]"]
        )
    )
  )
)
