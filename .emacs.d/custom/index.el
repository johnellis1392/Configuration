

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Index for emacs customizations


;; Set utility root
(setq -custom-root "~/.emacs.d/custom/")
(defun -custom (path) (concat -custom-root path))


;; Load customizations 
(load (-custom "js/index.el")) 
(load (-custom "util/index.el")) 

;; Variables for Preojctile File Explorer
(projectile-global-mode)
;(setq projectile-indexing-mode 'native)
(setq projectile-indexing-mode 'alien)
(setq projectile-require-project-root nil)



