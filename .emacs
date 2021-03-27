;; Define default window size constants
(defconst frame-default-top 0 "The 'top' position property of a frame.")
(defconst frame-default-left 0 "The 'left' position property of a frame.")
(defconst frame-default-height 90 "The default frame height.")
(defconst frame-default-width 180 "The default frame width.")

;; Set default window size
(setq initial-frame-alist
      '((top . 1) (left . 1) (height . 90) (width . 180)))

;;(add-to-list 'default-frame-alist (cons 'top frame-default-top))
;;(add-to-list 'default-frame-alist (cons 'left frame-default-left))
;;(add-to-list 'default-frame-alist (cons 'height frame-default-height))
;;(add-to-list 'default-frame-alist (cons 'width frame-default-width))

;; Set initial window size
(setq default-frame-alist
      '((top . 1) (left . 1) (height . 90) (width . 180)))

;;(add-to-list 'initial-frame-alist (cons 'top frame-default-top))
;;(add-to-list 'initial-frame-alist (cons 'left frame-default-left))
;;(add-to-list 'initial-frame-alist (cons 'height frame-default-height))
;;(add-to-list 'initial-frame-alist (cons 'width frame-default-width))

;; Set default font
(set-frame-font "monospace 10" nil t)

;; Set themes directory
(add-to-list 'custom-theme-load-path
    (file-name-as-directory ".emacs.d/themes"))

;; Load and enable themes
(load-theme 'railscast t t)
(enable-theme 'railscast)
