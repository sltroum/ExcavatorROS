
(cl:in-package :asdf)

(defsystem "exp_excavator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointValues" :depends-on ("_package_JointValues"))
    (:file "_package_JointValues" :depends-on ("_package"))
  ))