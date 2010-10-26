(add-hook 'sgml-mode-hook
          (lambda ()
            (define-key sgml-mode-map "\C-m" 'reindent-then-newline-and-indent)))

(global-set-key [M-right] 'end-of-line)
(global-set-key [M-left] 'beginning-of-line)
(global-set-key [C-tab] 'next-buffer)

(global-set-key (kbd "C-x C-b") 'buffer-menu)
