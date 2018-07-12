;;; git-blamed-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "git-blamed" "git-blamed.el" (0 0 0 0))
;;; Generated autoloads from git-blamed.el

(autoload 'git-blamed-mode "git-blamed" "\
Toggle minor mode for displaying Git blame\n\nWith prefix ARG, turn the mode on if ARG is positive.\n\n(fn &optional ARG)" t nil)

(autoload 'git-reblame "git-blamed" "\
Recalculate all blame information in the current buffer\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-blamed" '("git-" "in-blame-filter" "remove-git-blamed-text-properties")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-blamed-autoloads.el ends here
