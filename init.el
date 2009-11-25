(add-to-list 'load-path "~/.emacs.d")

(setq inhibit-startup-message t);
(setq make-backup-files nil);
(setq auto-save-list-file-name nil);
(setq auto-save-default nil);
(menu-bar-mode -1)
(tool-bar-mode -1) 
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)



;; (set-face-background 'region "yellow");
;; (set-background-color "wheat3");

;;(load "php-mode.el")
(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . sgml-mode))
;;(set php-mode-force-pear 1)
(global-font-lock-mode 3)
;; (add-hook 'php-mode-hook 'turn-on-font-lock)
(ido-mode t)
(cua-mode t)
(xterm-mouse-mode t)


