(in-package :nobit@)

(defun tx-make-g*an (graph)
  (tx-make-vertex graph 'g*an))

(defgeneric flash-across-ones-mind (graph g*an)
  (:method (graph (g*an g*an))
    (format t  "flash-across-ones-mind~%")
    (spreads graph
             `(:result (:start ,(local-time:now) :end nil))
             g*an
             (find-frendship graph :from g*an))))
