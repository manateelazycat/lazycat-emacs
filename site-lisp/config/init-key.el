;; Mac平台下交换 Option 和 Command 键。
(when (featurep 'cocoa)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

;;; ### Unset key ###
;;; --- 卸载按键
(lazy-load-unset-keys                   ;全局按键的卸载
 '("C-x C-f" "C-z" "C-q" "s-T" "s-W" "s-z" "M-h" "C-x C-c" "C-\\" "s-c" "s-x" "s-v" "C-6" "M-." "M-,"))

;;; ### Popweb ###
;;; --- Web翻译
(lazy-load-global-keys
 '((";" . popweb-dict-bing-input)
   ("y" . popweb-dict-bing-pointer))
 "init-popweb"
 "C-z")

;;; ### Insert translated name ###
;;; --- 写中文翻译成英文函数名、 变量名
(lazy-load-global-keys
 '(
   ("," . insert-translated-name-insert-with-underline)
   ("." . insert-translated-name-insert-with-camel)
   )
 "insert-translated-name"
 "C-z"
 )
(lazy-load-global-keys
 '(
   ("s-j" . insert-translated-name-insert)
   )
 "init-insert-translated-name")

;;; ### Toolkit ###
;;; --- 工具函数
(lazy-load-set-keys
 '(
   ("s-c o" . one-key-menu-directory)   ;目录打开菜单
   ("s-," . bury-buffer)                ;隐藏当前buffer
   ("s-." . unbury-buffer)              ;反隐藏当前buffer
   ("s-[" . eval-expression)            ;执行表达式
   ("C-s-q" . quoted-insert)            ;读取系一个输入字符并插入
   ("M-h" . set-mark-command) ;Instead C-Space for Chinese input method
   ("M-H" . set-mark-command) ;Instead C-Space for Chinese input method
   ("M-;" . comment-dwim)
   ))
(lazy-load-set-keys
 '(
   ("M-h" . set-mark-command)
   )
 vc-git-region-history-mode-map)

(lazy-load-global-keys
 '(
   ("s-R" . re-builder)                 ;可视化构建正则表达式
   )
 "init-rebuilder")

;;; ### Color-Rg ###
;;; --- 搜索重构
(lazy-load-global-keys
 '(
   ("s-x g" . color-rg-search-symbol)
   ("s-x h" . color-rg-search-input)
   ("s-x j" . color-rg-search-symbol-in-project)
   ("s-x k" . color-rg-search-input-in-project)
   ("s-x ," . color-rg-search-symbol-in-current-file)
   ("s-x ." . color-rg-search-input-in-current-file)
   )
 "color-rg")
(lazy-load-global-keys
 '(
   ("C-z l" . display-line-numbers-mode) ;行号模式切换
   ("M-s-n" . comment-part-move-down)    ;向下移动注释
   ("M-s-p" . comment-part-move-up)      ;向上移动注释
   ("C-s-n" . comment-dwim-next-line)    ;移动到上一行并注释
   ("C-s-p" . comment-dwim-prev-line)    ;移动到下一行并注释
   ("M-2" . indent-buffer)               ;自动格式化当前Buffer
   ("M-z" . upcase-char)      ;Upcase char handly with capitalize-word
   ("C-x u" . mark-line)      ;选中整行
   ("s-k" . kill-and-join-forward)      ;在缩进的行之间删除
   ("M-G" . goto-column)                ;到指定列
   ("C->" . remember-init)              ;记忆初始函数
   ("C-<" . remember-jump)              ;记忆跳转函数
   ("M-s-," . point-stack-pop)          ;buffer索引跳转
   ("M-s-." . point-stack-push)         ;buffer索引标记
   ("s-g" . goto-percent)    ;跳转到当前Buffer的文本百分比, 单位为字符
   ("M-I" . backward-indent) ;向后移动4个字符
   ("s-J" . scroll-up-one-line)         ;向上滚动一行
   ("s-K" . scroll-down-one-line)       ;向下滚动一行
   ("<f2>" . refresh-file)              ;自动刷新文件
   ("s-f" . find-file-root)             ;用root打开文件
   ("s-r" . find-file-smb)              ;访问sambao
   )
 "basic-toolkit")
(lazy-load-global-keys
 '(
   ("M-g" . goto-line-preview))
 "goto-line-preview")

;;; ### Delete block ###
;;; --- 快速删除光标左右的内容
(lazy-load-global-keys
 '(
   ("M-N" . delete-block-backward)
   ("M-M" . delete-block-forward))
 "delete-block")

;;; ### Watch other window ###
;;; --- 滚动其他窗口
(lazy-load-global-keys
 '(
   ("M-J" . watch-other-window-up)        ;向下滚动其他窗口
   ("M-K" . watch-other-window-down)      ;向上滚动其他窗口
   ("M-<" . watch-other-window-up-line)   ;向下滚动其他窗口一行
   ("M->" . watch-other-window-down-line) ;向上滚动其他窗口一行
   )
 "watch-other-window")

;;; ### Buffer Move ###
;;; --- 缓存移动
(lazy-load-set-keys
 '(
   ("C-z k" . beginning-of-buffer)      ;缓存开始
   ("C-z j" . end-of-buffer)            ;缓存结尾
   ("C-M-f" . forward-paragraph)        ;下一个段落
   ("C-M-b" . backward-paragraph)       ;上一个段落
   ("C-M-y" . backward-up-list)         ;向左跳出 LIST
   ("C-M-o" . up-list)                  ;向右跳出 LIST
   ("C-M-u" . backward-down-list)       ;向左跳进 LIST
   ("C-M-i" . down-list)                ;向右跳进 LIST
   ("C-M-a" . beginning-of-defun)       ;函数开头
   ("C-M-e" . end-of-defun)             ;函数末尾
   ))
(lazy-load-global-keys
 '(
   ("M-s" . symbol-overlay-put)         ;懒惰搜索
   )
 "init-symbol-overlay")
(lazy-load-global-keys
 '(
   ("s-N" . move-text-down)      ;把光标所在的整行文字(或标记)下移一行
   ("s-P" . move-text-up)        ;把光标所在的整行文字(或标记)上移一行
   )
 "move-text")
(lazy-load-global-keys
 '(
   ("C-S-o" . duplicate-line-or-region-above) ;向上复制当前行或区域
   ("C-S-l" . duplicate-line-or-region-below) ;向下复制当前行或区域
   ("C-S-s-o" . duplicate-line-above-comment) ;复制当前行到上一行, 并注释当前行
   ("C-S-s-l" . duplicate-line-below-comment) ;复制当前行到下一行, 并注释当前行
   ("C-:" . comment-or-uncomment-region+)     ;注释当前行
   )
 "duplicate-line")
(lazy-load-global-keys
 '(
   ("C-o" . open-newline-above)         ;在上面一行新建一行
   ("C-l" . open-newline-below)         ;在下面一行新建一行
   )
 "open-newline")

;;; ### Buffer Name ###
;;; --- 缓存名字
(lazy-load-global-keys
 '(
   ("C-M-;" . kill-other-window-buffer) ;关闭其他窗口的buffer
   )
 "buffer-extension")

;;; ### Buffer Edit ###
;;; --- 缓存编辑
(lazy-load-set-keys
 '(
   ("C-x C-x" . exchange-point-and-mark)   ;交换当前点和标记点
   ("M-o" . backward-delete-char-untabify) ;向前删除字符
   ("C-M-S-h" . mark-paragraph)            ;选中段落
   ("M-SPC" . just-one-space)              ;只有一个空格在光标处
   ))

;;; ### goto-last-change ###
;;; --- 跳到最后编辑的地方
(lazy-load-global-keys
 '(
   ("C-," . goto-last-change)           ;跳到最后编辑的地方
   )
 "goto-last-change")

;;; ### vundo ###
;;; --- 可视化撤销插件
(lazy-load-global-keys
 '(
   ("C-/" . undo)
   ("C-?" . vundo)
   )
 "init-vundo")

;;; ### Markmacro ###
;;; --- 标记对象的键盘宏操作
(lazy-load-global-keys
 '(
   ("s-h" . one-key-menu-mark-macro)     ;one-key菜单
   ("s-M" . markmacro-rect-set)          ;记录矩形编辑开始的位置
   ("s-D" . markmacro-rect-delete)       ;删除矩形区域
   ("s-F" . markmacro-rect-replace)      ;替换矩形区域的内容
   ("s-I" . markmacro-rect-insert)       ;在矩形区域前插入字符串
   ("s-C" . markmacro-rect-mark-columns) ;转换矩形列为标记对象
   ("s-S" . markmacro-rect-mark-symbols) ;转换矩形列对应的符号为标记对象
   ("s-<" . markmacro-apply-all)         ;应用键盘宏到所有标记对象
   ("s->" . markmacro-apply-all-except-first) ;应用键盘宏到所有标记对象, 除了第一个， 比如下划线转换的时候
   )
 "init-markmacro")

;;; ### Font ###
;;; --- 字体命令
(lazy-load-set-keys
 '(
   ("s--" . text-scale-decrease)        ;减小字体大小
   ("s-=" . text-scale-increase)        ;增加字体大小
   ))

;;; ### Window Operation ###
;;; --- 窗口操作
(lazy-load-set-keys
 '(
   ("C-c v" . split-window-vertically)   ;纵向分割窗口
   ("C-c h" . split-window-horizontally) ;横向分割窗口
   ("C-x ;" . delete-other-windows)      ;关闭其它窗口
   ))
(lazy-load-global-keys
 '(
   ("C-'" . delete-current-buffer-and-window) ;关闭当前buffer, 并关闭窗口
   ("C-\"" . delete-current-buffer-window)    ;删除当前buffer的窗口
   ("C-x O" . toggle-window-split)
   )
 "window-extension")

;;; ### Toggle-One-Window ###
;;; --- 临时最大化当前窗口
(lazy-load-global-keys
 '(
   ("M-s-o" . toggle-one-window)        ;切换一个窗口
   )
 "toggle-one-window")

;;; ### Sort-Tab ###
;;; --- 多标签浏览
(lazy-load-global-keys
 '(
   ("M-7" . sort-tab-select-prev-tab)    ;选择前一个标签
   ("M-8" . sort-tab-select-next-tab)    ;选择后一个标签
   ("M-s-7" . sort-tab-select-first-tab) ;选择第一个标签
   ("M-s-8" . sort-tab-select-last-tab)  ;选择最后一个标签
   ("C-;" . sort-tab-close-current-tab)  ;关闭当前标签
   ("s-q" . sort-tab-close-other-tabs)   ;关闭后台标签
   ("s-Q" . sort-tab-close-all-tabs)     ;关闭所有标签
   )
 "sort-tab")

;;; ### Functin key ###
;;; --- 功能函数
(autoload 'ielm-map "ielm")
(eval-after-load 'ielm-mode
  '(lambda ()
     (progn
       (lazy-load-unset-keys
        '("M-p" "M-n")
        ielm-map)                       ;卸载按键
       (lazy-load-set-keys
        '(
          ("C-s-p" . comint-previous-input) ;上一个输入
          ("C-s-n" . comint-next-input)     ;下一个输入
          )
        ielm-map
        )
       )))
(lazy-load-global-keys
 '(
   ("M-s-i" . ielm-toggle)              ;切换ielm
   ("<f5>" . emacs-session-save)        ;退出emacs
   ("C-4" . insert-changelog-date)      ;插入日志时间 (%Y/%m/%d)
   ("C-5" . insert-standard-date)
   ("C-&" . switch-to-messages)         ;跳转到 *Messages* buffer
   )
 "lazycat-toolkit")

;;; ### Fingertip ###
;;; --- 结构化编程
(lazy-load-unset-keys
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 fingertip-mode-map)                    ;卸载按键
(defvar fingertip-key-alist nil)
(setq fingertip-key-alist
      '(
        ;; 移动
        ("M-n" . fingertip-jump-left)
        ("M-p" . fingertip-jump-right)
        ;; 符号插入
        ("%" . fingertip-match-paren)            ;括号跳转
        ("(" . fingertip-open-round)             ;智能 (
        ("[" . fingertip-open-bracket)           ;智能 [
        ("{" . fingertip-open-curly)             ;智能 {
        (")" . fingertip-close-round)            ;智能 )
        ("]" . fingertip-close-bracket)          ;智能 ]
        ("}" . fingertip-close-curly)            ;智能 }
        ("（" . fingertip-open-chinese-round)    ;智能 （
        ("「" . fingertip-open-chinese-bracket)  ;智能 「
        ("【" . fingertip-open-chinese-curly)    ;智能 【
        ("）" . fingertip-close-chinese-round)   ;智能 ）
        ("」" . fingertip-close-chinese-bracket) ;智能 」
        ("】" . fingertip-close-chinese-curly)   ;智能 】
        ("\"" . fingertip-double-quote)          ;智能 "
        ("'" . fingertip-single-quote)           ;智能 '
        ("=" . fingertip-equal)                  ;智能 =
        ("SPC" . fingertip-space)                ;智能 space
        ("RET" . fingertip-newline)              ;智能 newline
        ;; 删除
        ("M-o" . fingertip-backward-delete) ;向后删除
        ("C-d" . fingertip-forward-delete)  ;向前删除
        ("C-k" . fingertip-kill)            ;向前kill
        ;; 包围
        ("M-\"" . fingertip-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
        ("M-'" . fingertip-wrap-single-quote) ;用 ' ' 包围对象, 或跳出字符串
        ("M-[" . fingertip-wrap-bracket)      ;用 [ ] 包围对象
        ("M-{" . fingertip-wrap-curly)        ;用 { } 包围对象
        ("M-(" . fingertip-wrap-round)        ;用 ( ) 包围对象
        ("M-)" . fingertip-unwrap)            ;去掉包围对象
        ;; 跳出并换行缩进
        ("M-:" . fingertip-jump-out-pair-and-newline) ;跳出括号并换行
        ;; 向父节点跳动
        ("C-j" . fingertip-jump-up)
        ))
(lazy-load-set-keys fingertip-key-alist fingertip-mode-map)

;;; ### Thingh-edit ###
;;; --- 增强式编辑当前光标的对象
(lazy-load-global-keys
 '(
   ("M-s-h" . one-key-menu-thing-edit)  ;thing-edit 菜单
   )
 "init-thing-edit")

;;; ### EAF ###
;;; EAF
(unless (featurep 'cocoa)
  (lazy-load-global-keys
   '(
     ("M-j" . lazycat-emacs-open-dir)
     ("<f8>" . lazycat-emacs-open-dir)
     ("s-'" . eaf-open)
     ("s-\"" . eaf-open-browser)
     ("s-n" . eaf-open-terminal)
     ("s-b" . eaf-open-rss-reader)
     ("s-z" . eaf-open-cloud-music)
     ("s-Z" . eaf-open-music-player)
     ("s-1" . eaf-music-player-play-next)
     ("s-2" . eaf-music-player-play-toggle)
     ("s-3" . eaf-music-player-pop)
     ("s-6" . eaf-record-log)
     ("s-7" . eaf-stop-process)
     )
   "init-eaf"))

;;; ### Isearch ###
;;; --- 交互式搜索
(lazy-load-set-keys
 '(
   ("TAB" . isearch-complete)           ;isearch补全
   ("C-s" . isearch-repeat-forward) ;重复向前搜索, 第一次可以用来搜索上一次的历史哟
   ("C-r" . isearch-repeat-backward)   ;重复向后搜索
   ("C-g" . isearch-abort)             ;中止搜索
   ("C-w" . isearch-yank-word-or-char) ;粘帖光标后的词或字符作为搜索对象
   ("C-y" . isearch-yank-line)         ;粘帖光标后的行作为搜索对象
   ("M-o" . isearch-delete-char)       ;删除
   ("M-p" . isearch-ring-retreat)      ;搜索历史向后
   ("M-n" . isearch-ring-adjust)       ;搜索历史向前
   ("M-y" . isearch-yank-kill) ;从 kill ring 中粘帖最后一项到搜索对象后
   ("M-h" . isearch-yank-char) ;粘帖光标后的字符到搜索对象
   ("M-e" . isearch-edit-string)        ;编辑搜索对象
   ("M-c" . isearch-toggle-case-fold)   ;切换大小写
   ("M-r" . isearch-toggle-regexp)      ;切换正则表达式
   ("M-w" . isearch-toggle-word)        ;切换词
   ("M->" . isearch-beginning-of-buffer) ;跳转到buffer开头并重新搜索, 搜索最前面一个
   ("M-<" . isearch-end-of-buffer) ;跳转到buffer末尾并重新搜索, 搜索最后面一个
   ("M-%" . isearch-query-replace) ;替换
   ("M-d" . isearch-find-duplicate-word)    ;查找重复的单词
   ("M-z" . isearch-find-duplicate-line)    ;查找重复的行
   ("C-M-%" . isearch-query-replace-regexp) ;正则表达式替换
   )
 isearch-mode-map
 )

;;; ### kill-ring-search ###
;;; --- 删除环的递增式搜索
(lazy-load-global-keys
 '(
   ("M-s-y" . kill-ring-search)         ;kill ring 搜索
   )
 "init-kill-ring-search")

;;; ### Help ###
;;; --- 帮助模式
(lazy-load-global-keys
 '(
   ("C-h". one-key-menu-help)           ;帮助菜单
   )
 "init-help-mode")
(lazy-load-global-keys
 '(
   ("M-U" . smart-align)
   )
 "smart-align")

;;; ### Yoaddmuse ###
;;; --- Yet another oddmuse mode
(lazy-load-global-keys
 '(
   ("M-s-;" . one-key-menu-yaoddmuse)   ;yaoddmuse 菜单
   )
 "init-yaoddmuse")

;;; ### Python ###
;;; --- Python mode
(eval-after-load 'python-mode
  '(lambda ()
     (lazy-load-local-keys
      '(
        ("C-S-j" . jump-to-import)
        )
      python-mode-map
      "python-mode-utils")
     ))

;;; ### Man ###
;;; --- Man
(lazy-load-global-keys
 '(
   ("<f1>" . woman))
 "init-woman")

;;; ### English Helper ###
;;; --- 英文助手
(lazy-load-global-keys
 '(
   ("M-r" . lsp-bridge-toggle-sdcv-helper) ;英文助手
   )
 "init-lsp-bridge")

(lazy-load-set-keys
 '(
   ("M-r" . lsp-bridge-toggle-sdcv-helper) ;英文助手
   )
 minibuffer-mode-map)

;;; ### Ido ###
;;; --- 交互式管理文件和缓存
(lazy-load-set-keys
 '(
   ("C-x C-f" . ido-find-file)          ;交互式查找文件
   ("C-x b" . ido-switch-buffer)        ;交互式切换buffer
   ("C-x i" . ido-insert-buffer)        ;插入缓存
   ("C-x I" . ido-insert-file)          ;插入文件
   ))
(add-hook 'ido-setup-hook
          #'(lambda ()
              (interactive)
              (ido-my-keys ido-completion-map)))
(defun ido-my-keys (keymap)
  "Add my keybindings for ido."
  (lazy-load-set-keys
   '(
     ("M-s-p" . ido-prev-match)              ;上一个匹配
     ("M-s-n" . ido-next-match)              ;下一个匹配
     ("M-s-h" . ido-next-work-directory)     ;下一个工作目录
     ("M-s-l" . ido-prev-work-directory)     ;上一个工作目录
     ("M-o" . backward-delete-char-untabify) ;向前删除字符
     ("M-O" . ido-delete-backward-updir)     ;删除字符或进入上一级目录
     )
   keymap
   ))

;;; ### IRC ###
;;; --- 聊天
(lazy-load-global-keys
 '(
   ("C-c i" . switch-to-erc)            ;切换到IRC或自动登录IRC
   ("C-c I" . erc-nick-notify-jump-last-channel) ;自动跳转到最后收到消息的频道
   )
 "init-erc")

;;; Elisp
;;; --- Elisp编程设置
(lazy-load-set-keys
 '(
   ("RET" . comment-indent-new-line)    ;自动换行并注释
   )
 emacs-lisp-mode-map)

;;; ### Git ###
;;; --- EAF Git
(lazy-load-global-keys
 '(
   ("s-x f" . one-key-menu-git))
 "init-eaf")

;; ### Smex ###
;;; --- 高级M-x
(lazy-load-global-keys
 '(
   ("M-x" . smex+)
   ("C-c C-c M-x" . execute-extended-command)
   )
 "init-smex")

;; ### Visual Regex ###
;;; --- 可视化替换
(lazy-load-global-keys
 '(
   ("C-M-%" . vr/query-replace))
 "init-visual-regexp")

;; ### Blink Search ###
;;; --- 最快的搜索框架
(lazy-load-global-keys
 '(
   ("s-y" . blink-search)
   )
 "init-blink-search")

;; ### lsp-bridge ###
;;; --- 代码语法补全
(lazy-load-global-keys
 '(
   ("C-7" . lsp-bridge-find-def-return)
   ("C-8" . lsp-bridge-find-def)
   ("M-," . lsp-bridge-code-action)
   ("M-." . lsp-bridge-find-references)
   ("C-9" . lsp-bridge-popup-documentation)
   ("C-0" . lsp-bridge-rename)
   ("M-s-j" . lsp-bridge-diagnostic-jump-next) ;显示下一个错误
   ("M-s-k" . lsp-bridge-diagnostic-jump-prev) ;显示上一个错误
   ("M-s-l" . lsp-bridge-diagnostic-copy)      ;拷贝诊断信息
   ("M-s-n" . lsp-bridge-popup-documentation-scroll-up) ;向下滚动文档
   ("M-s-p" . lsp-bridge-popup-documentation-scroll-down) ;向上滚动文档
   ("C-&"   . lsp-bridge-indent-left)                     ;向左缩进
   ("C-*"   . lsp-bridge-indent-right)                    ;向右缩进
   ("s-m"   . lsp-bridge-popup-complete-menu)
   )
 "init-lsp-bridge")

;; ### popper ###
;;; --- 弹出窗口管理
(lazy-load-global-keys
 '(
   ("C-`" . popper-toggle-latest)
   ("M-`" . popper-cycle)
   ("C-M-`" . popper-toggle-type)
   )
 "init-popper")

;; ### easy-nav ###
;;; --- 单键导航
(lazy-load-global-keys
 '(
   ("C-s-l" . easy-nav-enter)
   )
 "init-easy-nav")

;; ### diff-mode ###
;;; --- 去掉 diff 的一些按键
(lazy-load-unset-keys
 '("M-7" "M-8")
 diff-mode-map)

;; ### gptel ###
;;; --- AI
(lazy-load-global-keys
 '(
   ("s-?" . start-gptel)
   ("s-:" . gptel-pinyin-to-chinese))
 "init-gptel")

;; ;; ### aider ###
;; ;;; --- AI
;; (lazy-load-global-keys
;;  '(("s-/" . aider-transient-menu))
;;  "init-aider")

;; ### reorder-file ###
;;; --- 自动排序文件内容
(lazy-load-global-keys
 '(("C-q" . reorder-file))
 "reorder-file")

(provide 'init-key)
