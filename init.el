;; 
(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; Package Management
;; ------------------
(require 'init-packages)
;; UI Management
;; -------------
(require 'init-ui)
;; Some Usaful Defaults
;; -------------------
(require 'init-better-defaults)
;; For Chnise Fonts
(require 'init-fonts)
;; For Web-mode
(require 'web-mode)
;; For Auctex
(require 'init-auctex)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (omnisharp js2-mode gnu-elpa-keyring-update company tabbar dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
