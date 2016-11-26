

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Index to import custom emacs utilities 


;; Load utility files
(setq -util-root "~/.emacs.d/custom/util/")
(defun -util (path) (concat -util-root path))


;; Load utilities 
(load (-util "packages.el"))
(load (-util "init.el"))
(load (-util "keys.el"))
(load (-util "ui.el"))
(load (-util "tabbar.el"))
(load (-util "shell.el"))




