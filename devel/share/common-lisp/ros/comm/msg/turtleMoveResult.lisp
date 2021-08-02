; Auto-generated. Do not edit!


(cl:in-package comm-msg)


;//! \htmlinclude turtleMoveResult.msg.html

(cl:defclass <turtleMoveResult> (roslisp-msg-protocol:ros-message)
  ((turtle_final_x
    :reader turtle_final_x
    :initarg :turtle_final_x
    :type cl:float
    :initform 0.0)
   (turtle_final_y
    :reader turtle_final_y
    :initarg :turtle_final_y
    :type cl:float
    :initform 0.0)
   (turtle_final_theta
    :reader turtle_final_theta
    :initarg :turtle_final_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass turtleMoveResult (<turtleMoveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtleMoveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtleMoveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comm-msg:<turtleMoveResult> is deprecated: use comm-msg:turtleMoveResult instead.")))

(cl:ensure-generic-function 'turtle_final_x-val :lambda-list '(m))
(cl:defmethod turtle_final_x-val ((m <turtleMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_final_x-val is deprecated.  Use comm-msg:turtle_final_x instead.")
  (turtle_final_x m))

(cl:ensure-generic-function 'turtle_final_y-val :lambda-list '(m))
(cl:defmethod turtle_final_y-val ((m <turtleMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_final_y-val is deprecated.  Use comm-msg:turtle_final_y instead.")
  (turtle_final_y m))

(cl:ensure-generic-function 'turtle_final_theta-val :lambda-list '(m))
(cl:defmethod turtle_final_theta-val ((m <turtleMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_final_theta-val is deprecated.  Use comm-msg:turtle_final_theta instead.")
  (turtle_final_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtleMoveResult>) ostream)
  "Serializes a message object of type '<turtleMoveResult>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_final_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_final_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_final_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtleMoveResult>) istream)
  "Deserializes a message object of type '<turtleMoveResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_final_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_final_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_final_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtleMoveResult>)))
  "Returns string type for a message object of type '<turtleMoveResult>"
  "comm/turtleMoveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtleMoveResult)))
  "Returns string type for a message object of type 'turtleMoveResult"
  "comm/turtleMoveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtleMoveResult>)))
  "Returns md5sum for a message object of type '<turtleMoveResult>"
  "0e7b4195ae4864a401f0242e01596152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtleMoveResult)))
  "Returns md5sum for a message object of type 'turtleMoveResult"
  "0e7b4195ae4864a401f0242e01596152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtleMoveResult>)))
  "Returns full string definition for message of type '<turtleMoveResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64 turtle_final_x~%float64 turtle_final_y~%float64 turtle_final_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtleMoveResult)))
  "Returns full string definition for message of type 'turtleMoveResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64 turtle_final_x~%float64 turtle_final_y~%float64 turtle_final_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtleMoveResult>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtleMoveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'turtleMoveResult
    (cl:cons ':turtle_final_x (turtle_final_x msg))
    (cl:cons ':turtle_final_y (turtle_final_y msg))
    (cl:cons ':turtle_final_theta (turtle_final_theta msg))
))
