(add-hook 'sgml-mode-hook
          (lambda ()
            (define-key sgml-mode-map "\C-m" 'reindent-then-newline-and-indent)))


(global-set-key "\M- " 'hippie-expand)

(define-key global-map [select] 'end-of-line)

(when (boundp 'osx-key-mode-map)
  (setq mac-function-modifier 'meta)
  (setq mac-option-modifier nil))

