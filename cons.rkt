#lang racket
;Zach Keller
;Test file
;1/5/16


(define zach (cons 3 empty))
;(cons 5 (cons 3 empty))
;(cons 6 (cons 4 (cons 3 empty)))
(cons 4 zach)
zach

(define (create-list size)
(cond
 [(>= 0 size) empty]
[(cons size (create-list(- size 1)))]))

(create-list 5)
(first (create-list 5))
(rest (create-list 5))


(define (length l)
(cond
  [(empty? l) 0]
  [(+ 1 (length (rest l)))]))

(length (create-list 15))