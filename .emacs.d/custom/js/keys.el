

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom keybindings for Javascript mode


;; Beautify the current file 
(defun -js-beautify nil
  (interactive) 
  (save-buffer) 
  (shell-command (concat "js-beautify -r " (buffer-file-name))) 
  (revert-buffer t t)) 


;; Insert a new lambda function 
(defun -gen-function nil
  (interactive)
  (insert "function() {") 
  (newline) 
  (newline) 
  (insert "}")
  (indent-for-tab-command)
  (previous-line)
  (indent-for-tab-command)) 


;; Set custom keybindings for javascript mode 
(defun -set-keys nil
  (local-unset-key (kbd "<f10>"))
  (local-set-key (kbd "<f10>") '-js-beautify)) 


;; Set custom js keybindings 
(add-hook 'js2-mode-hook '-set-keys) 



