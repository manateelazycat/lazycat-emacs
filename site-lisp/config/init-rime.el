;;; init-rime.el --- Configuration for emacs-rime

;; Filename: init-rime.el
;; Description: Configuration for emacs-rime
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2020, Andy Stewart, all rights reserved.
;; Created: 2020-03-22 14:52:23
;; Version: 0.1
;; Last-Updated: 2020-03-22 14:52:23
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-rime.el
;; Keywords:
;; Compatibility: GNU Emacs 26.3
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
;; Configuration for emacs-rime
;;

;;; Installation:
;;
;; Put init-rime.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-rime)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-rime RET
;;

;;; Change log:
;;
;; 2020/03/22
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
(require 'rime)

;;; Code:
(setq rime-user-data-dir (expand-file-name "~/.local/share/fcitx5/rime"))

(setq rime-posframe-properties
      (list :background-color "#333333"
            :foreground-color "#dcdccc"
            ;; :font "TsangerJinKai03-6763"
            :internal-border-width 10))

(setq default-input-method "rime"
      rime-show-candidate 'posframe)

(lazy-load-set-keys
 '(
   ("M-o" . rime--backspace)
   ("M-m" . rime--return)
   ("M-h" . rime--escape))
 rime-active-mode-map)

(provide 'init-rime)

;;; init-rime.el ends here
