#lang racket

#|
gravatar-test.rkt
GravatarDemo-Racket

Created by Bracken Spencer.
Copyright (c) 2020-2021 Bracken Spencer. All rights reserved.
|#

(require "gravatar.rkt")

(module+ test
  (require rackunit rackunit/text-ui)

  (define suite
    (test-suite
     "gravatar.rkt tests"

     (test-equal? "md5-email"
                  (md5-email "email@example.com")
                  "5658ffccee7f0ebfda2b226238b1eb6e")
     (test-equal? "image-url"
                  (image-url "email@example.com" 200)
                  "https://www.gravatar.com/avatar/5658ffccee7f0ebfda2b226238b1eb6e?s=200&r=x")
     (test-equal? "profile-url"
                  (profile-url "email@example.com")
                  "https://www.gravatar.com/5658ffccee7f0ebfda2b226238b1eb6e.json")))

  (run-tests suite))
