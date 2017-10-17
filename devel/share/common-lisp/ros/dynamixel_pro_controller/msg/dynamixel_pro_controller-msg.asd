
(cl:in-package :asdf)

(defsystem "dynamixel_pro_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointEnable" :depends-on ("_package_JointEnable"))
    (:file "_package_JointEnable" :depends-on ("_package"))
    (:file "ChainLimits" :depends-on ("_package_ChainLimits"))
    (:file "_package_ChainLimits" :depends-on ("_package"))
    (:file "ChainEnable" :depends-on ("_package_ChainEnable"))
    (:file "_package_ChainEnable" :depends-on ("_package"))
    (:file "JointLimits" :depends-on ("_package_JointLimits"))
    (:file "_package_JointLimits" :depends-on ("_package"))
  ))