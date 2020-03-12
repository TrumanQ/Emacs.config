
;; (setq ring-bell-function 'ignore)


(global-auto-revert-mode t)
(global-company-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq ring-bell-function 'ignore)

(recentf-mode 1)
(setq recentf-max-menu-item 25)

(delete-selection-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-defaults)
