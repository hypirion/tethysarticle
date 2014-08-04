(define (sqrt-iter guess x) ;; finds $y = \sqrt{x}$
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
