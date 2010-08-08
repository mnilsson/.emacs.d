
(vendor 'php-mode)

(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . php-mode))
(autoload 'javascript-mode "javascript" "Major mode for editing javascript code." t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

(setq php-basic-offset 4)


(setq php-mode-force-pear t)


(add-hook 'php-mode-hook
          (lambda ()
            (define-key php-mode-map "\C-m" 'reindent-then-newline-and-indent)
            (define-key php-mode-map "[" 'electric-pair)
            (define-key php-mode-map "{" 'electric-pair)))