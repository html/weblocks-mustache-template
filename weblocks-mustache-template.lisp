;;;; weblocks-mustache-template.lisp

(in-package #:weblocks-mustache-template)

(defclass mustache-template-mixin ()
  ((template :initform nil :initarg :template)
   (variables :initform nil :initarg :variables :accessor mustache-template-mixin-variables)))

(defmethod mustache-template-mixin-template ((view mustache-template-mixin))
  (with-slots (template) view
    (etypecase template
      (function template)
      ; XXX: not tested
      (string (mustache:mustache-compile template)))))

(defmethod render-mustache-template ((widget mustache-template-mixin))
  (funcall (mustache-template-mixin-template widget) (mustache-template-mixin-variables widget)))

(defmacro with-mustache-output-to (stream &body body)
  `(let ((mustache:*mustache-output* ,stream))
     ,@body))

(defwidget mustache-template-widget (widget mustache-template-mixin)
  ())

(defmethod render-widget-body ((widget mustache-template-widget) &rest args)
  (with-mustache-output-to weblocks:*weblocks-output-stream* 
    (render-mustache-template widget)))

