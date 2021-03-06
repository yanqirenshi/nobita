(in-package :nobit@)


(defclass friendship (edge)
  ((heart       :accessor heart       :initarg :heart       :initform nil)
   (description :accessor description :initarg :description :initform "")
   (contexts    :accessor contexts    :initarg :contexts    :initform (make-hash-table :synchronized t))))


(defmethod jojo:%to-json ((obj friendship))
  (jojo:with-object
    (jojo:write-key-value "_id"  (slot-value obj 'up:%id))
    (jojo:write-key-value "from_id" (slot-value obj 'shinra:from-id))
    (jojo:write-key-value "from_class" (slot-value obj 'shinra:from-class))
    (jojo:write-key-value "to_id" (slot-value obj 'shinra:to-id))
    (jojo:write-key-value "to_class" (slot-value obj 'shinra:to-class))
    ;; (jojo:write-key-value "heart"   (slot-value obj 'heart))
    (jojo:write-key-value "contexts" (princ-to-string (slot-value obj 'contexts)))))
