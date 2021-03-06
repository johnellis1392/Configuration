

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom key-bindings

;; Set Alt-<right/left> to switch buffers
(global-set-key (kbd "M-<right>") 'tabbar-forward-group)
(global-set-key (kbd "M-<left>") 'tabbar-backward-group)
(global-set-key (kbd "C-c C-p") 'tabbar-backward-group) ; Switch to next tabbar group
(global-set-key (kbd "C-c C-n") 'tabbar-forward-group) ; Switch to previous tabbar group
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f2>") 'other-window)
(global-set-key (kbd "<f3>") 'neotree-toggle)
(global-set-key (kbd "<C-f2>") 'split-window-below) 
(global-set-key (kbd "<C-f3>") 'split-window-right) 

(global-set-key (kbd "C-j") 'backward-char)
(global-set-key (kbd "C-k") 'previous-line)
(global-set-key (kbd "C-l") 'next-line)
(global-set-key (kbd "C-;") 'forward-char)

(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "M-k") 'backward-paragraph)
(global-set-key (kbd "M-l") 'forward-paragraph)
(global-set-key (kbd "M-;") 'forward-word)

(add-hook
 'c++-mode-hook
 (lambda ()
   (interactive)
   (local-unset-key (kbd "C-j"))
   (local-set-key (kbd "C-j") 'backward-char)
   (local-unset-key (kbd "M-j"))
   (local-set-key (kbd "M-j") 'backward-word))) 

;; Reset keys when in org mode 
(add-hook
 'org-mode-hook
 (lambda ()
   (interactive)
   (local-unset-key (kbd "C-k"))
   (local-set-key (kbc "C-k") 'previous-line)
   (local-unset-key (kbd "C-j"))
   (local-set-key (kbd "C-j") 'backward-char)
   (local-unset-key (kbd "C-;"))
   (local-set-key (kbd "C-;") 'forward-char))) 

(add-hook
 'c-mode-hook
 (lambda ()
   (interactive)
   (local-unset-key (kbd "M-j"))
   (local-set-key (kbd "M-j") 'backward-word)

   (local-unset-key (kbd "C-M-j"))
   (local-set-key (kbd "C-M-j") 'tabbar-backward-group)))


(defun window-half-height ()
  (max 1 (/ (1- (window-height (selected-window))) 2)))

(defun scroll-up-half ()
  (interactive)
  (let ((-scroll-speed (window-half-height))) 
    (scroll-up -scroll-speed)
    (previous-line -scroll-speed)))

(defun scroll-down-half ()
  (interactive)
  (let ((-scroll-speed (window-half-height)))
    (scroll-down -scroll-speed)
    (next-line -scroll-speed)))


(global-set-key (kbd "C-M-j") 'tabbar-backward-group)
(global-set-key (kbd "C-M-k") 'scroll-down-half)
(global-set-key (kbd "C-M-l") 'scroll-up-half)
(global-set-key (kbd "C-M-;") 'tabbar-forward-group)

(global-set-key (kbd "M-a") 'back-to-indentation) 
(global-set-key (kbd "C-M-d") 'kill-line)
(global-set-key (kbd "C-M-w") 'kill-sentence) 
(global-set-key (kbd "C-w") 'backward-delete-char-untabify)
(global-set-key (kbd "M-w") 'backward-kill-word)
(global-set-key (kbd "M-/") 'comment-region)
(global-set-key (kbd "M-?") 'uncomment-region) 
(global-set-key (kbd "<C-tab>") 'indent-for-tab-mode)
;(global-set-key (kbd "<C-tab>") 'indent-region)
;(global-set-key (kbd "<C-tab>") 'indent-for-tab-command)
(global-set-key (kbd "C-'") 'mark-paragraph) 
(global-set-key (kbd "C-c C-c") 'kill-region) 


;; Keybindings for reverting file to file from buffer
(global-set-key
 (kbd "<f9>")
 (lambda ()
   (interactive)
   (revert-buffer t t)))

; Keybindings for scrolling up and down single lines
(global-set-key (kbd "C-=")
  (lambda ()
    (interactive)
    (scroll-up-line)
    (next-line))) ; Scroll up one line
(global-set-key (kbd "C--")
  (lambda()
    (interactive)
    (scroll-down-line)
    (previous-line))) ; Scroll down one line


; Keybindings for effectively scrolling the window up and down
(setq -scroll-speed 5)
(global-set-key (kbd "C-}")
  (lambda ()
    (interactive)
    (scroll-up-line -scroll-speed)
    (next-line -scroll-speed)))
(global-set-key (kbd "C-{")
  (lambda ()
    (interactive)
    (scroll-down-line -scroll-speed)
    (previous-line -scroll-speed))) 

; Keybindings for faster scrolling
(setq -fast-scroll-speed 10)
(global-set-key
 (kbd "M-}")
 (lambda ()
   (interactive)
   (scroll-up-line -fast-scroll-speed)
   (next-line -fast-scroll-speed)))
(global-set-key
 (kbd "M-{")
 (lambda ()
   (interactive)
   (scroll-down-line -fast-scroll-speed)
   (previous-line -fast-scroll-speed))) 



;; Keybindings for deleting paragraphs
(global-set-key (kbd "C->") 'kill-paragraph) 
(global-set-key (kbd "C-<") 'backward-kill-paragraph) 





