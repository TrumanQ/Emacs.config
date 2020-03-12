;; (load-theme 'monokai t)
(load-theme 'dracula t)

;;===================================
;;
;;How to set default window size
;;
;;===================================
;; initial window
(setq initial-frame-alist
      '(
        (width . 160) ; character
        (height . 54) ; lines
        ))

;; default/sebsequent window
(setq default-frame-alist
      '(
        (width . 158) ; character
        (height . 52) ; lines
        ))

;; Set the Font size
;; -----------------
(set-face-attribute 'default nil :height 90)

;; (global-linum-mode 1)
(tabbar-mode 1)
(scroll-bar-mode -1)
(global-linum-mode t)
(column-number-mode t)
(global-hl-line-mode t)
(show-paren-mode t)

(provide 'init-ui)
