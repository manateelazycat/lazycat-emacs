;; 加速配置。
(require 'init-accelerate)

;; 字体设置
(require 'init-font)

(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  ;; 让窗口启动更平滑
  (setq frame-inhibit-implied-resize t)
  (setq-default inhibit-redisplay t
                inhibit-message t)
  (add-hook 'window-setup-hook
            (lambda ()
              (setq-default inhibit-redisplay nil
                            inhibit-message nil)
              (redisplay)))

  ;; 定义一些启动目录，方便下次迁移修改
  (defvar lazycat-emacs-root-dir (file-truename "~/lazycat-emacs/site-lisp"))
  (defvar lazycat-emacs-config-dir (concat lazycat-emacs-root-dir "/config"))
  (defvar lazycat-emacs-extension-dir (concat lazycat-emacs-root-dir "/extensions"))

  (with-temp-message ""              ;抹掉插件启动的输出
    ;;(require 'benchmark-init-modes)
    ;;(require 'benchmark-init)
    ;;(benchmark-init/activate)

    (require 'init-fullscreen)

    (require 'init-generic)
    (require 'lazycat-theme)
    (lazycat-theme-load-with-sunrise)
    ;; (lazycat-theme-load-dark)
    ;; (lazycat-theme-load-light)
    (when (featurep 'cocoa)
      (require 'cache-path-from-shell))
    (require 'lazy-load)
    (require 'one-key)
    (require 'fingertip)
    (require 'display-line-numbers)
    (require 'basic-toolkit)
    (require 'redo)

    (require 'init-highlight-parentheses)
    (require 'init-awesome-tray)
    (require 'init-line-number)
    (require 'init-lsp-bridge)
    (require 'init-auto-save)
    (require 'init-mode)
    (require 'init-fingertip)
    (require 'init-indent)
    (require 'init-one-key)
    (require 'init-key)
    (require 'init-vi-navigate)
    (require 'init-isearch-mb)
    (require 'init-performance)
    (require 'init-rime)
    (require 'init-treesit)
    (require 'init-key-echo)

    ;; 可以延后加载的
    (run-with-idle-timer
     1 nil
     #'(lambda ()
         (require 'pretty-lambdada)
         (require 'browse-kill-ring)
         (require 'elf-mode)

         (require 'init-eldoc)
         (require 'init-yasnippet)
         (require 'init-cursor-chg)
         (require 'init-winpoint)
         (require 'init-info)
         (require 'init-c)
         (require 'init-org)
         (require 'init-idle)
         (require 'init-markdown-mode)
         (require 'init-olivetti)

         (unless (eq window-system 'pgtk)
           (require 'init-holo-layer)
           (require 'init-eaf))

         (require 'init-popweb)
         (require 'init-eww)

         (require 'trekker)
         (trekker-enable)

         ;; Restore session at last.
         (require 'init-session)
         (emacs-session-restore)

         (require 'init-sort-tab)
         ))))

(provide 'init)
