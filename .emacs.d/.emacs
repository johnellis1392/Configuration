
;; Define global emacs root
(defvar emacs-root "/home/celestia/")
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(load-library "url-handlers")

(custom-set-faces)
(put 'erase-buffer 'disabled nil)

(load "~/.emacs.d/custom/index.el") 


