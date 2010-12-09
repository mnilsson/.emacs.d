(setq inhibit-startup-message t);
(setq make-backup-files nil);
(setq auto-save-list-file-name nil);
(setq auto-save-default nil);
(setq vc-handled-backends nil)
(global-font-lock-mode 3)
(set-face-attribute 'default nil :font "menlo" :height 110)
(cua-mode nil)
(normal-erase-is-backspace-mode nil)
(when (functionp 'scroll-bar-mode)
  (scroll-bar-mode -1))


(ido-mode t)

(xterm-mouse-mode t)

(setq x-select-enable-clipboard t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)


(when (boundp 'aquamacs-version)
  (one-buffer-one-frame-mode 0)
  (aquamacs-autoface-mode 0))

(when (functionp 'tabbar-mode)
  (tabbar-mode -1))

(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))

(defun mnl-toggle-selective-display ()
 (interactive)
 (set-selective-display (if selective-display nil 1)))



(global-set-key [f5] 'mnl-toggle-selective-display)
