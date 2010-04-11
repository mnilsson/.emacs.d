
(global-set-key "\C-x\C-z" 'eshell)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)

(eval-after-load 'eshell
      '(progn
         (define-key shell-mode-map [up] 'comint-previous-input)
         (define-key shell-mode-map [down] 'comint-next-input)))