;; Set initial window size
;;(setq initial-frame-alist '((top . 0) (left . 0) (height . 90) (width . 180)))

;; Set default window size
;;(setq default-frame-alist '((top . 0) (left . 0) (height . 90) (width . 180)))

;; Set default font
(set-frame-font "monospace 10" nil t)

;; Set themes directory
(add-to-list 'custom-theme-load-path (file-name-as-directory ".emacs.d/themes") t)

;; Load and enable themes
(load-theme 'railscast t t)
(enable-theme 'railscast)

;; Add package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;
;; Initialize plugins
;;
(add-to-list 'load-path ".emacs.d/pack/neotree")
(require 'neotree)
