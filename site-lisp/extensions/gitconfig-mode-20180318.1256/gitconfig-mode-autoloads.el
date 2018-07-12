;;; gitconfig-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gitconfig-mode" "gitconfig-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from gitconfig-mode.el

(autoload 'gitconfig-mode "gitconfig-mode" "\
A major mode for editing .gitconfig files.\n\n(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/modules/.*/config\\'" "/git/config\\'" "/\\.gitmodules\\'" "/etc/gitconfig\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gitconfig-mode" '("gitconfig-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitconfig-mode-autoloads.el ends here
