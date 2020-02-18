#lang racket

#|
gravatar.rkt
GravatarDemo-Racket

Created by brackendev.
Copyright (c) 2020 brackendev. All rights reserved.
|#

(require file/md5
         json
         net/url
         racket/draw
         "./fetch-a-url.rkt")
(include "./fetch-a-url.rkt")

(provide md5-email image-url profile-url)

(define (md5-email email)
  (format "~a" (md5 email)))

(define (image-url email size)
    (string-append "http://www.gravatar.com/avatar/" (md5-email email) "?s=" (number->string size) "&r=x"))

(define (profile-url email)
  (string-append "https://www.gravatar.com/" (md5-email email) ".json"))

(define (profile-request email)
  (bytes->jsexpr (http-request (profile-url email))))

(define (image-request email [size 100])
  (read-bitmap (get-pure-port (string->url (image-url email size)))))
