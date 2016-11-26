

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom keybindings for shell mode


;; Set shell initialization keys 

;; Constant for what shell to use
(setq -shell "/bin/bash") 


;; Start shell and prompt for name 
(global-set-key
 (kbd "<f5>")
 (lambda (buffer-name)
   (interactive "sBuffer name: ") 
   (ansi-term -shell)
   (rename-buffer buffer-name t))) 


;; Start shell without prompt
(global-set-key
 (kbd "<C-f5>")
 (lambda nil
   (interactive)
   (ansi-term -shell))) 



