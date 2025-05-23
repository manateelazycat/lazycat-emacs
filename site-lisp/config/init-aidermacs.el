;;; init-aidermacs.el --- Config for aidermacs   -*- lexical-binding: t; -*-

;; Filename: init-aidermacs.el
;; Description: Config for aidermacs
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2025, Andy Stewart, all rights reserved.
;; Created: 2025-02-16 08:12:07
;; Version: 0.1
;; Last-Updated: 2025-02-16 08:12:07
;;           By: Andy Stewart
;; URL: https://www.github.org/manateelazycat/init-aidermacs
;; Keywords:
;; Compatibility: GNU Emacs 31.0.50
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
;; Config for aidermacs
;;

;;; Installation:
;;
;; Put init-aidermacs.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-aidermacs)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-aidermacs RET
;;

;;; Change log:
;;
;; 2025/02/16
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
(require 'aidermacs)

;;; Code:
(setq aidermacs-program (expand-file-name "~/.local/bin/aider"))
(setq aidermacs-default-model "openrouter/anthropic/claude-3.7-sonnet")
(setenv "OPENROUTER_API_KEY" (with-temp-buffer
                               (insert-file-contents "~/.config/openrouter/key.txt")
                               (string-trim (buffer-string))))


(provide 'init-aidermacs)

;;; init-aidermacs.el ends here
