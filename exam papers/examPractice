#lang racket

; August 2018
(define map-skip
  (λ (func l)
    (cond ((null? l)'())
          (else
           (append (list (func (car l))(cadr l))(map-skip func(drop l 2)))))))

; January 2018
(define tear
  (λ (func l)
    (list (filter func l) (not (filter func l)))))

; August 2017

; nearly works skips the final values
(define foo
  (λ (l1 l2)
    (poof l1 l2 1)))

(define poof
  (λ (l1 l2 x)
    (cond
      ((and (null? l1) (null? l2))'())
      ((null? l1) l2)
      ((null? l2) l1)
      ((>= x (length l1))l1)
      (else
       (append (append (take l1 x) (poof l2 (drop l1 x) (+ x 1))))))))

; January 2017
(define goo
  (λ (fun l)
    (filter fun (flatten l))))

(define flatten
  (λ (l)
    (cond
      ((null? l)l)
      ((pair? (car l))(append (flatten (car l))(flatten (cdr l))))
      (else
       (append (list (car l))(flatten (cdr l)))))))

; August 2016
(define tr
  (λ (ls)
    (cond
      ((null? (car ls)) '())
      (else
       (cons(map car ls)(tr (map cdr ls)))))))

; January 2016
(define reverse-with-count
  (λ (l1 l2)
    (cond
      ((null? l1)'())
      (else
       (append (make-list (car (reverse l2))(car (reverse l1))) (reverse-with-count (reverse (cdr (reverse l1))) (reverse (cdr (reverse l2)))))))))

; August 2015 is the same as January 2016

; January 2015
(define after-filter
  (λ (p l)
    (cond
      ((or(null? l)(null? (cdr l)))'())
      ((p (car l)) (cons (cadr l)(after-filter p (cdr l))))
      (else
       (after-filter p (cdr l))))))
