#lang sicp

;; RECURSIVE PROCESS 
(define (function n )
  (cond ((< n 3) n)
        ((+ (function (- n 1))
            (* 2 (function (- n 2)))
            (* 3 (function (- n 3)))
            ))))
(function 8)

;; ITRRATIVE FUNCTION
(define (func n) (func-iter 2 1 0 n))
(define (func-iter a b max-count n)
  (cond ((= (- n max-count) 2) b)
        ((func-iter (+ a (* 2 b) (* 3 max-count)) (* 2 b) (+ max-count 1) n))
  ))
  
(func 8)