
(cl:in-package :asdf)

(defsystem "ros_gpio-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GpioState" :depends-on ("_package_GpioState"))
    (:file "_package_GpioState" :depends-on ("_package"))
  ))