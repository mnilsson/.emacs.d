(prefer-coding-system 'utf-8)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil
      backup-inhibited)
(setq vc-handled-backends nil)
(global-font-lock-mode 3)

(set-face-attribute 'default nil :font "menlo" :height 110)
(cua-mode nil)
(normal-erase-is-backspace-mode nil)
(when (functionp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(defalias 'list-buffers 'ibuffer)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq ibuffer-expert t)

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


(windmove-default-keybindings)
(setq windmove-wrap-around t)

(require 'eshell)
(push 'eshell-smart eshell-modules-list)

;; whitespace & line breaks
(setq kill-whole-line t
      require-final-newline t
      whitespace-display-mappings
      '((space-mark 32 [183] [46])
        (space-mark 160[164] [95])
        (space-mark 2208 [2212] [95])
        (space-mark 2336 [2340] [95])
        (space-mark 3616 [3620] [95])
        (space-mark 3872 [3876] [95])
        (newline-mark 10 [36 10])
        (tab-mark 9 [9655 9] [92 9]))
      whitespace-line-column 80
      whitespace-style '(face trailing tabs tab-mark lines-tail empty))

(global-whitespace-mode 1)

(setq password-cache-expiry nil)
