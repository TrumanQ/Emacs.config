;;=============================
;;=               Configure for AucTex
;;=       espacially for XeLaTeX compile
;;=============================
(add-hook 'LaTeX-mode-hook 
          (lambda () 
            (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
            (setq TeX-auto-untabify t     ; remove all tabs before saving 
                  TeX-engine 'xetex       ; use xelatex default 
                  TeX-show-compilation t ; display compilation windows 
                  TeX-command-default "XeLaTeX")
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain 
            (setq TeX-save-query nil) 
            (imenu-add-menubar-index) 
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

(provide 'init-auctex)
