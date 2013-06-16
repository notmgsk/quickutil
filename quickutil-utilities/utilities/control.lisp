(in-package #:quickutil)

(defutil until (:version (1 . 0)
                :category (language control))
  "Executes `body` until `expression` is true."
  #>%%%>
  (defmacro until (expression &body body)
    %%DOC
    `(do ()
         (,expression)
       ,@body))
  %%%)

(defutil while (:version (1 . 0)
                :category (language control))
  "Executes `body` while `expression` is true."
  #>%%%>
  (defmacro while (expression &body body)
    %%DOC
    `(until (not ,expression)
       ,@body))
  %%%)
