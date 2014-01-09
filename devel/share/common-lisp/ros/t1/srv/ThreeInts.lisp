; Auto-generated. Do not edit!


(cl:in-package t1-srv)


;//! \htmlinclude ThreeInts-request.msg.html

(cl:defclass <ThreeInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (c
    :reader c
    :initarg :c
    :type cl:integer
    :initform 0))
)

(cl:defclass ThreeInts-request (<ThreeInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThreeInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThreeInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t1-srv:<ThreeInts-request> is deprecated: use t1-srv:ThreeInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t1-srv:a-val is deprecated.  Use t1-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <ThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t1-srv:b-val is deprecated.  Use t1-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <ThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t1-srv:c-val is deprecated.  Use t1-srv:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThreeInts-request>) ostream)
  "Serializes a message object of type '<ThreeInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'c)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThreeInts-request>) istream)
  "Deserializes a message object of type '<ThreeInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThreeInts-request>)))
  "Returns string type for a service object of type '<ThreeInts-request>"
  "t1/ThreeIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThreeInts-request)))
  "Returns string type for a service object of type 'ThreeInts-request"
  "t1/ThreeIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThreeInts-request>)))
  "Returns md5sum for a message object of type '<ThreeInts-request>"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThreeInts-request)))
  "Returns md5sum for a message object of type 'ThreeInts-request"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThreeInts-request>)))
  "Returns full string definition for message of type '<ThreeInts-request>"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThreeInts-request)))
  "Returns full string definition for message of type 'ThreeInts-request"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThreeInts-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThreeInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ThreeInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
))
;//! \htmlinclude ThreeInts-response.msg.html

(cl:defclass <ThreeInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass ThreeInts-response (<ThreeInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThreeInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThreeInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t1-srv:<ThreeInts-response> is deprecated: use t1-srv:ThreeInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <ThreeInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t1-srv:sum-val is deprecated.  Use t1-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThreeInts-response>) ostream)
  "Serializes a message object of type '<ThreeInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThreeInts-response>) istream)
  "Deserializes a message object of type '<ThreeInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThreeInts-response>)))
  "Returns string type for a service object of type '<ThreeInts-response>"
  "t1/ThreeIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThreeInts-response)))
  "Returns string type for a service object of type 'ThreeInts-response"
  "t1/ThreeIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThreeInts-response>)))
  "Returns md5sum for a message object of type '<ThreeInts-response>"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThreeInts-response)))
  "Returns md5sum for a message object of type 'ThreeInts-response"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThreeInts-response>)))
  "Returns full string definition for message of type '<ThreeInts-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThreeInts-response)))
  "Returns full string definition for message of type 'ThreeInts-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThreeInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThreeInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ThreeInts-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ThreeInts)))
  'ThreeInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ThreeInts)))
  'ThreeInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThreeInts)))
  "Returns string type for a service object of type '<ThreeInts>"
  "t1/ThreeInts")