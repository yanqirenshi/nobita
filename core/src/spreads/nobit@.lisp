(in-package :nobit@)

(defun do-it-now? (_id frendships)
  (if (null frendships)
      t
      (let ((frendship (car frendships)))
        (if (null (exist-idea-p frendship _id))
            nil
            (do-it-now? _id (cdr frendships))))))


(defun pop-idea-from-frendships (_id frendships)
  (when-let ((frendship (car frendships)))
    ;; TODO: idea (plist) をマージする
    ;;   (1) eq で同一オブジェクトの場合は何もしない。
    ;;   (2) 同一オブジェクトでないとき、後勝ちで新plistを作成する。
    (gethash _id (contexts frendship))))


(defun eq-frendshp-from (frendship node)
  (= (up:%id node)
     (shinra::from-id frendship)))


(defun remove-karmas (_id source frendships)
  (when-let ((frendship (car frendships)))
    (unless (eq-frendshp-from frendship source)
      (let ((heart (get-heart :code (heart frendship))))
        (nobit@.karma:rm-karma-at-idea-id (karma-pool heart) _id)))
    (remove-karmas _id source (cdr frendships))))


(defun spread-action-rm-from-pocket (nobit@ idea-id)
    (let ((thread (get-from-pocket :nobit@-id (up:%id nobit@)
                                   :ide-id idea-id)))
      (rm-from-pocket thread)))


(defun spread-action (graph idea-id source nobit@ frendships_before)
  (let ((new_idea (solve graph
                         nobit@
                         (pop-idea-from-frendships idea-id frendships_before)
                         source)))
    (spread-action-rm-from-pocket nobit@ idea-id)
    (spreads graph
             new_idea
             nobit@
             (find-frendship graph
                             :from nobit@
                             :to-classes '(4neo nobit@)))))


(defun make-spread-thread (graph idea-id source nobit@ frendships_before)
  (bordeaux-threads:make-thread ;; TODO: スレッド数に制限かけんとね。
   #'(lambda ()
       (spread-action graph
                      idea-id
                      source
                      nobit@
                      frendships_before))))


(defmethod spread ((graph shinra:banshou) (idea nobit@.idea::idea) source (nobit@ nobit@))
  (nlog "SPREAD Nobit@: Start ~a~%" nobit@)

  (let ((frendships_before (find-frendship graph :to nobit@))
        (idea-id (idea-id idea)))
    (when (do-it-now? idea-id frendships_before)
      (add-to-pocket (up:%id nobit@)
                     idea-id
                     (make-spread-thread graph
                                         idea-id
                                         source nobit@
                                         frendships_before))))

  (nlog "SPREAD Nobit@: End ~a~%" nobit@))


(defun find-nobit@-actions (nobit@)
  (mapcar #'(lambda (d)
              (list :|name|    (bordeaux-threads:thread-name d)
                    :|alive-p| (if (bordeaux-threads:thread-alive-p d) t :false)))
          (nobit@.pocket:find-from-pocket :nobit@-id (up:%id nobit@))))
