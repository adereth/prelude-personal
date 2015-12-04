(setq prelude-whitespace nil)
(global-visual-line-mode 1)

(prelude-require-packages '(aggressive-indent
                            base16-theme
                            clj-refactor cider-eval-sexp-fu))

(load-theme 'base16-ashes-dark)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(require 'diminish)
(diminish 'projectile-mode)
(diminish 'company-mode)
(diminish 'flyspell-mode)
(diminish 'flycheck-mode)
(diminish 'prelude-mode)

(eval-after-load "guru-mode"
  '(diminish 'guru-mode))



(global-set-key [(super /)] 'comment-or-uncomment-region)

(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK" "AWAY"))

(setq display-time-string-forms
      '((propertize (concat " " 12-hours ":" minutes " "))))
(display-time-mode t)
