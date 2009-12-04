(add-to-list 'load-path "~/.emacs.d/vendor")

(setq inhibit-startup-message t);
(setq make-backup-files nil);
(setq auto-save-list-file-name nil);
(setq auto-save-default nil);
(menu-bar-mode -1)
(tool-bar-mode -1) 
(global-font-lock-mode 3)

(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(autoload 'javascript-mode "javascript" "Major mode for editing javascript code." t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . php-mode))






(global-set-key "\M- " 'hippie-expand)
(define-key global-map [select] 'end-of-line)

(ido-mode t)
(cua-mode t)
(xterm-mouse-mode t)
(setq-default show-trailing-whitespace t)
(global-linum-mode t)

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

(set-default-font "DejaVu Sans Mono-8")


(load "mnilsson/shell.el")
