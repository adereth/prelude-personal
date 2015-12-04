(add-to-list 'exec-path "/home/madereth/bin")

(setq cider-lein-command "/home/madereth/bin/lein")

(require 'clj-refactor)
(require 'cider-eval-sexp-fu)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-r"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
