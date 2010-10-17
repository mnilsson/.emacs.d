
(vendor 'php-mode)

(add-to-list 'auto-mode-alist '("\\.php\\'" . mnilsson-php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . html-mode))
(autoload 'javascript-mode "javascript" "Major mode for editing javascript code." t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))



(defun mnilsson-php-mode ()
  ;; Get rid of that ugly array and switch indentation
  (php-mode)
  (setq c-basic-offset 4)
  (c-set-offset 'case-label '+)
  (c-set-offset 'arglist-close 'c-lineup-arglist-operators)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-cont-nonempty 'c-lineup-math))

(add-hook 'php-mode-hook
          (lambda ()
            (define-key php-mode-map "\C-m" 'reindent-then-newline-and-indent)
            (define-key php-mode-map "[" 'electric-pair)
            (define-key php-mode-map "{" 'electric-pair)))