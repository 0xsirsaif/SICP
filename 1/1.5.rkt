#lang planet neil/sicp

(define (p) (p))

(define (test x y) (if (= x 0) 0 y))

(test 0 (p))

;; applicative-order evaluation
;; >> evaluates the arguments and then apply operands
;; >> would not terminate because (p) would be evaluated in the call of test 
;; (test 0 (p) )
;; (test 0 (p) )
;; (test 0 (p) )
;; .... and so on


;; normal-order evaluation
;; >> fully expand and then reduce
;; >> would terminate
;; (test 0 (p) (if (= 0 0) 0 (p) ))
;; if predicate statemnt is True
;; 0 will be returned