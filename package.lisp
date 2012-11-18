;;;; package.lisp

(defpackage #:weblocks-mustache-template
  (:use #:cl #:weblocks)
  (:export 
    #:mustache-template-mixin 
    #:mustache-template-mixin-template 
    #:mustache-template-mixin-variables 
    #:render-mustache-template 
    #:with-mustache-output-to 
    #:mustache-template-widget 
    #:template 
    #:variables))

