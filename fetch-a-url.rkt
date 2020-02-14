#lang racket

;;;; Based on https://lisp.sh/fetch-a-url/

;;; To use "http-request" via another Racket file:
;;; (require "./fetch-a-url.rkt") ; Update file location
;;; (include "./fetch-a-url.rkt")

;; Package "http" is not installed by default.
;; To install, execute via a shell: "raco pkg install http"
;; or via DrRacket: File -> Install Package...
(require http)

(provide http-request)

(define (http-request uri
                      #:redirects [redirects 10]
                      #:http-version [http-version "1.1"]
                      #:method [method "GET"]
                      #:data [data #""]
                      #:data-length [data-length #f]
                      #:heads [heads '(("User-Agent" . "DrRacket"))]
                      #:entity-reader [entity-reader read-entity/bytes])
  (if (and (bytes? data)
           (bytes=? data #"")
           (eq? data-length #f))
      (call/input-request http-version
                          method
                          uri
                          heads
                          entity-reader
                          #:redirects redirects)
      (call/output-request http-version
                           method
                           uri
                           data
                           data-length
                           heads
                           entity-reader
                           #:redirects redirects)))