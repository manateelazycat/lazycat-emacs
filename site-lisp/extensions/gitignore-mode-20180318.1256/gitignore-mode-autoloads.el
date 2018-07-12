;;; gitignore-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gitignore-mode" "gitignore-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from gitignore-mode.el

(autoload 'gitignore-mode "gitignore-mode" "\
A major mode for editing .gitignore files.\n\n(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gitignore-mode" '("gitignore-mode-font-lock-keywords")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitignore-mode-autoloads.el ends here
