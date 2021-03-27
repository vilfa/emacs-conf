;;
;; Defaults
;;

;; Set initial window size
;;(setq initial-frame-alist '((top . 0) (left . 0) (height . 90) (width . 180)))

;; Set default window size
;;(setq default-frame-alist '((top . 0) (left . 0) (height . 90) (width . 180)))

;; Set default font
(set-frame-font "monospace 10" nil t)

;;
;; Packages
;;

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;
;; Plugins
;;

(add-to-list 'load-path ".emacs.d/pack/neotree")
(require 'neotree)

;;
;; Keys
;;

(global-set-key [f8] 'neotree-toggle)

;;
;; Themes
;;

;; Load and enable themes 
(add-to-list 'custom-theme-load-path (file-name-as-directory ".emacs.d/themes") t)
(load-theme 'railscast t t)
(enable-theme 'railscast)

;; Set Neotree theme
(setq neo-theme (if (display-graphic-p) 'ascii 'ascii))
(setq-default neo-show-hidden-files t)
(global-display-line-numbers-mode)
