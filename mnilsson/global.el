(setq inhibit-startup-message t);
(setq make-backup-files nil);
(setq auto-save-list-file-name nil);
(setq auto-save-default nil);
(menu-bar-mode -1)
(tool-bar-mode -1) 
(global-font-lock-mode 3)





(ido-mode t)

(xterm-mouse-mode t)
(setq-default show-trailing-whitespace 1)

(setq x-select-enable-clipboard t)

(fringe-mode "default")
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

(when (boundp 'aquamacs-version)
  (one-buffer-one-frame-mode 0))

