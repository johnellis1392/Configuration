

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks and keybindings for javascript mode 


;; Get absolute path of javascript util
(setq -js-root "~/.emacs.d/custom/js/") 
(defun -js (path) (concat -js-root path))


;; Load utilities 
(load (-js "keys.el"))


;; Load Javascript packages
(add-to-list 'load-path "~/.emacs.d/js2-mode/js2-mode.el")
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))



