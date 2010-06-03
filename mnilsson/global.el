(setq inhibit-startup-message t);
(setq make-backup-files nil);
(setq auto-save-list-file-name nil);
(setq auto-save-default nil);
(tool-bar-mode -1)
(global-font-lock-mode 3)
(linum-mode t)
(set-default-font "Menlo 12")




(ido-mode t)

(xterm-mouse-mode t)
;(setq-default show-trailing-whitespace 1)

(setq x-select-enable-clipboard t)

(fringe-mode "minimal")
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

(when (boundp 'aquamacs-version)
  (one-buffer-one-frame-mode 0))


(defun mnl-toggle-selective-display ()
 (interactive)
 (set-selective-display (if selective-display nil 1)))

(global-set-key [f5] 'mnl-toggle-selective-display)
