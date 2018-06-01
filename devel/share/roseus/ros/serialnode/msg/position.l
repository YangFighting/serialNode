;; Auto-generated. Do not edit!


(when (boundp 'serialnode::position)
  (if (not (find-package "SERIALNODE"))
    (make-package "SERIALNODE"))
  (shadow 'position (find-package "SERIALNODE")))
(unless (find-package "SERIALNODE::POSITION")
  (make-package "SERIALNODE::POSITION"))

(in-package "ROS")
;;//! \htmlinclude position.msg.html


(defclass serialnode::position
  :super ros::object
  :slots (_x _y _t ))

(defmethod serialnode::position
  (:init
   (&key
    ((:x __x) "")
    ((:y __y) "")
    ((:t __t) "")
    )
   (send-super :init)
   (setq _x (string __x))
   (setq _y (string __y))
   (setq _t (string __t))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; string _x
    4 (length _x)
    ;; string _y
    4 (length _y)
    ;; string _t
    4 (length _t)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;; string _y
       (write-long (length _y) s) (princ _y s)
     ;; string _t
       (write-long (length _t) s) (princ _t s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _y
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _y (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _t
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _t (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get serialnode::position :md5sum-) "d66668aabc9e40d78e13110532323445")
(setf (get serialnode::position :datatype-) "serialnode/position")
(setf (get serialnode::position :definition-)
      "string x
string y
string t
")



(provide :serialnode/position "d66668aabc9e40d78e13110532323445")


