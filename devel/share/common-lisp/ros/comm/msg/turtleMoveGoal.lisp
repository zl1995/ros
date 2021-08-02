; Auto-generated. Do not edit!


(cl:in-package comm-msg)


;//! \htmlinclude turtleMoveGoal.msg.html

(cl:defclass <turtleMoveGoal> (roslisp-msg-protocol:ros-message)
  ((turtle_target_x
    :reader turtle_target_x
    :initarg :turtle_target_x
    :type cl:float
    :initform 0.0)
   (turtle_target_y
    :reader turtle_target_y
    :initarg :turtle_target_y
    :type cl:float
    :initform 0.0)
   (turtle_target_theta
    :reader turtle_target_theta
    :initarg :turtle_target_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass turtleMoveGoal (<turtleMoveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtleMoveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtleMoveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comm-msg:<turtleMoveGoal> is deprecated: use comm-msg:turtleMoveGoal instead.")))

(cl:ensure-generic-function 'turtle_target_x-val :lambda-list '(m))
(cl:defmethod turtle_target_x-val ((m <turtleMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_target_x-val is deprecated.  Use comm-msg:turtle_target_x instead.")
  (turtle_target_x m))

(cl:ensure-generic-function 'turtle_target_y-val :lambda-list '(m))
(cl:defmethod turtle_target_y-val ((m <turtleMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_target_y-val is deprecated.  Use comm-msg:turtle_target_y instead.")
  (turtle_target_y m))

(cl:ensure-generic-function 'turtle_target_theta-val :lambda-list '(m))
(cl:defmethod turtle_target_theta-val ((m <turtleMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-msg:turtle_target_theta-val is deprecated.  Use comm-msg:turtle_target_theta instead.")
  (turtle_target_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtleMoveGoal>) ostream)
  "Serializes a message object of type '<turtleMoveGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turtle_target_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtleMoveGoal>) istream)
  "Deserializes a message object of type '<turtleMoveGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_target_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turtle_target_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtleMoveGoal>)))
  "Returns string type for a message object of type '<turtleMoveGoal>"
  "comm/turtleMoveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtleMoveGoal)))
  "Returns string type for a message object of type 'turtleMoveGoal"
  "comm/turtleMoveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtleMoveGoal>)))
  "Returns md5sum for a message object of type '<turtleMoveGoal>"
  "d6ca75a13b0855b8f735f0fec295b281")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtleMoveGoal)))
  "Returns md5sum for a message object of type 'turtleMoveGoal"
  "d6ca75a13b0855b8f735f0fec295b281")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtleMoveGoal>)))
  "Returns full string definition for message of type '<turtleMoveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%float64 turtle_target_x  # Specify Turtle's　target position~%float64 turtle_target_y~%float64 turtle_target_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtleMoveGoal)))
  "Returns full string definition for message of type 'turtleMoveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%float64 turtle_target_x  # Specify Turtle's　target position~%float64 turtle_target_y~%float64 turtle_target_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtleMoveGoal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtleMoveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'turtleMoveGoal
    (cl:cons ':turtle_target_x (turtle_target_x msg))
    (cl:cons ':turtle_target_y (turtle_target_y msg))
    (cl:cons ':turtle_target_theta (turtle_target_theta msg))
))
