
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other special UI customizations

;; Set linum-mode
(setq linum-format "%4d \u2502 ") ; Set line number format 
(add-hook 'prog-mode-hook 'linum-mode) ; Auto-start linum-mode when in program mode
(add-hook 'text-mode-hook 'linum-mode) ; Auto-start linum-mode when in text mode too 

;; Turn off cursor blinking
(blink-cursor-mode 0)

;; Turn on paren-highlighting
(show-paren-mode 1)

;; Rainbow delimiters for parentheses 
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode) 


;; Load solarized color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-themes/themes")

(if (display-graphic-p)
    (load-theme 'graham t)
  (load-theme 'manoj-dark t))

(add-hook
 'sh-mode-hook
 (lambda nil
   (load-theme-buffer-local 'color-theme-gnome (current-buffer)))) 

;; Turn ansi colors on in shell mode 
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;; Disable menu bar and other graphical monotony 
(add-hook
 'after-init-hook
 (lambda ()
   (progn
     (menu-bar-mode -1)
     (scroll-bar-mode -1)
     (tool-bar-mode -1))))



