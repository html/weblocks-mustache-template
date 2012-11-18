;;;; weblocks-mustache-template.asd

(asdf:defsystem #:weblocks-mustache-template
  :serial t
  :description "mustache-template-widget and mustache-template-mixin classes to use with weblocks framework"
  :author "Olexiy Zamkoviy <olexiy.z@gmail.com>"
  :license "Specify license here"
  :version "0.0.1"
  :depends-on (#:weblocks
               #:cl-mustache)
  :components ((:file "package")
               (:file "weblocks-mustache-template")))

