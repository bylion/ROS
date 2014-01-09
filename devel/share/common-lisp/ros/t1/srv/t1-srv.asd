
(cl:in-package :asdf)

(defsystem "t1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "ThreeInts" :depends-on ("_package_ThreeInts"))
    (:file "_package_ThreeInts" :depends-on ("_package"))
  ))