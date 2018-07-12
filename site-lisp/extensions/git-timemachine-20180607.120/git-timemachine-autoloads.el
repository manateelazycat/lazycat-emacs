;;; git-timemachine-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "git-timemachine" "git-timemachine.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from git-timemachine.el

(autoload 'git-timemachine-toggle "git-timemachine" "\
Toggle git timemachine mode.\n\n(fn)" t nil)

(autoload 'git-timemachine "git-timemachine" "\
Enable git timemachine for file of current buffer.\n\n(fn)" t nil)

(autoload 'git-timemachine-switch-branch "git-timemachine" "\
Enable git timemachine for current buffer, switching to GIT-BRANCH.\n\n(fn GIT-BRANCH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-timemachine" '("git-timemachine-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-timemachine-autoloads.el ends here
