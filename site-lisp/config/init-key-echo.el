;;; init-key-echo.el --- Config for key-echo   -*- lexical-binding: t; -*-

;; Filename: init-key-echo.el
;; Description: Config for key-echo
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2023, Andy Stewart, all rights reserved.
;; Created: 2023-08-03 20:01:08
;; Version: 0.1
;; Last-Updated: 2023-08-03 20:01:08
;;           By: Andy Stewart
;; URL: https://www.github.org/manateelazycat/init-key-echo
;; Keywords:
;; Compatibility: GNU Emacs 30.0.50
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Config for key-echo
;;

;;; Installation:
;;
;; Put init-key-echo.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-key-echo)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-key-echo RET
;;

;;; Change log:
;;
;; 2023/08/03
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require
(require 'key-echo)

;;; Code:

(key-echo-enable)

(defun key-echo-monitor-callback (key)
  (interactive)
  ;; (message "***** %s" key)
  (cond
   ;; Press `Shift' to toggle input method.
   ((and (string-equal key "Key.shift")
         (not buffer-read-only)
         (not (derived-mode-p 'eaf-mode)))
    (toggle-input-method)

    ;; Change cursor color if `cursor-chg' is installed.
    (when (require 'cursor-chg nil t)
      (curchg-change-cursor-on-input-method)))
   ;; Press left `Alt' to start blink-search.
   ((string-equal key "Key.alt")
    (when (require 'blink-search nil t)
      (unless blink-search-start-buffer
        (blink-search))))))

(setq key-echo-single-key-trigger-func 'key-echo-monitor-callback)

(provide 'init-key-echo)

;;; init-key-echo.el ends here
