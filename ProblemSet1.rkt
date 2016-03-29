;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ProblemSet1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;lang racket
;Zach Keller
;Test file
;1/5/16

( define ratio (/ 5.0 9.0))
( define (to-celcius amount)  (* (- amount  32) ratio))

(check-expect (to-celcius 32) 0)
(check-expect (to-celcius 86) 30)
(check-expect (to-celcius 5) -15)

(define (is-leap-year year) (if (= 0 (modulo year 4)) (if (= 0 (modulo year 100)) (if (= 0 (modulo year 400)) true false) true) false))

(check-expect (is-leap-year 2016) true)
(check-expect (is-leap-year 2000) true)
(check-expect (is-leap-year 2015) false)
(check-expect (is-leap-year 1900) false)
(check-expect (is-leap-year 1700) false)


(define (countdown n)
  (cond
  [ (>= 0 n) "Blastoff!"]
  [else (string-append (number->string n) " " (countdown (- n 1)))]))
      
(check-expect (countdown 10) "10 9 8 7 6 5 4 3 2 1 Blastoff!")
(check-expect (countdown 2) "2 1 Blastoff!")
(check-expect (countdown 0) "Blastoff!")
(check-expect (countdown -3) "Blastoff!")

(define (summation n)
  (cond
    [ (>= 0 n) 0]
    [else (+ n (summation (- n 1)))]))

(check-expect (summation 5) 15)
(check-expect (summation 2) 3)
(check-expect (summation -1) 0)
(check-expect (summation 1) 1)

(define (numDigits n)
  (cond
  [ (= 0 n) 0]
  [else (+ 1 (numDigits (quotient n 10)))]))

(check-expect (numDigits 5) 1)
(check-expect (numDigits 2321) 4)
(check-expect (numDigits 328917332) 9)
(check-expect (numDigits 109) 3)


    