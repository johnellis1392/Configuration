
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tabbar-mode customizations:

(eval-after-load "tabbar"
  (tabbar-mode))

;; Function that separates all buffers into two groups:
;;  "emacs" - which holds emacs utilities
;;  "user"  - which holds user files
(defun my-tabbar-buffer-groups-1 ()
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))


;; Function that puts all open files into same group
(defun my-tabbar-buffer-groups-2 ()
  (list "user"))
;(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups-2)


