
(load "vendor/php-mode-new")

(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(autoload 'javascript-mode "javascript" "Major mode for editing javascript code." t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))


(setq php-mode-force-pear t)
