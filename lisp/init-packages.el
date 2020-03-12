;;
;;
;;

(setq package-archives '(("GNU" . "https://elpa.gnu.org/packagers/")
			 ("Melpa" . "https://stable.melpa.org/packages/")
			 ;;("Gnu_CN" . "http://elpa.emacs-china.org/gnu/")
			 ;;("Melpa_CN" . "http://elpa.emacs-china.org/melpa/")
			 )
      )

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar truman/packages '(
			  ;; --- Auto-completion ---
			  company
			  ;; --- Display a tab bar in the header line ---
			  tabbar
			  ;; --- Theme
			  ;;monokai-theme
			  dracula-theme
			  ;; ---
			  js2-mode
			  web-mode
			  hungry-delete
			  popwin
			  magit
			  ) "Default packages")

(setq package-selected-packages truman/packages)

(defun truman/packages-installed-p ()
  (loop for pkg in truman/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (truman/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg truman/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(global-hungry-delete-mode t)
(global-set-key (kbd "C-x g") 'magit-status)

;; Config file_type-mode for files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'". web-mode))
       auto-mode-alist
       )
      )

(require 'popwin)
(popwin-mode t)
;; ...

(provide 'init-packages)
