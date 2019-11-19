(in-package :nobit@.dora@mon)


(defgeneric tx-make-and-add-future-tool-in-4dp (graph dora@mon &key name description efficacy)
  (:method (graph (dora@mon dora@mon) &key name description efficacy)
    (assert-efficacy efficacy :dora@mon dora@mon)
    (let ((future-item (tx-make-future-tool graph
                                            :name name
                                            :description description
                                            :efficacy efficacy)))
      (tx-ensure-add-four-dimensional-pocket graph
                                             dora@mon
                                             future-item))))
