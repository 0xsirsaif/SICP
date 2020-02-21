#lang planet neil/sicp

(define (square num) (* num num))

(define (get_1st a b c)
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        ((and (>= c a) (>= c b)) c))
)

(define (2nd_num x y)
  (if (>= x y) x y)
)

(define (get_2nd a b c)
  (cond ((and (>= a b) (>= a c)) (2nd_num b c))
        ((and (>= b a) (>= b c)) (2nd_num a c))
        ((and (>= c a) (>= c b)) (2nd_num a b)))
)

(define (square_two_larger_nums a b c)
  (+ (square (get_1st a b c)) (square (get_2nd a b c)))
)

(square_two_larger_nums 5 4 6)
