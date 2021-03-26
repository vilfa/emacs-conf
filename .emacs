;; Set themes directory
(add-to-list 'custom-theme-load-path
    (file-name-as-directory ".emacs.d/themes"))

(load-theme 'railscast t t)
(enable-theme 'railscast)
