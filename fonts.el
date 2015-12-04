(setq default-font-size 14)
(setq current-font-size default-font-size)
(setq current-font "Consolas")

(defun update-font ()
  (set-face-attribute 'default
                      nil
                      :font (concat current-font
                                    "-"
                                    (number-to-string current-font-size))))

(update-font)

(defun change-font-size (size) (setq current-font-size size) (update-font))

(global-set-key (kbd "C-0")
                '(lambda () (interactive)
                   (change-font-size default-font-size)))
(global-set-key (kbd "C-=")
                '(lambda () (interactive)
                   (change-font-size (+ current-font-size 1))))
(global-set-key (kbd "C--")
                '(lambda () (interactive)
                   (change-font-size (- current-font-size 1))))

(defun change-font (font) (setq current-font font) (update-font))

(global-set-key (kbd "C-1")
                '(lambda () (interactive)
                   (change-font "Consolas")
                   (change-font-size 10)))

(global-set-key (kbd "s-2")
                '(lambda () (interactive)
                   (change-font "Droid Sans Mono")
                   (change-font-size 16)))
