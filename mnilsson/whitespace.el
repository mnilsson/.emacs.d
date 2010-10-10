(require 'whitespace)
(setq-default whitespace-line-column 80
      whitespace-style '(tabs trailing lines-tail))


(set-face-attribute 'whitespace-line nil
                   :background "red1"
                   :foreground "yellow"
                   :weight 'bold)
(set-face-attribute 'whitespace-tab nil
                   :background "red1"
                   :foreground "yellow"
                   :weight 'bold)

(add-hook 'php-mode-hook '(lambda () (whitespace-mode 1)))
