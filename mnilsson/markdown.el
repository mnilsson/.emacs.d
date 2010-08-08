(autoload 'markdown-mode "vendor/markdown-mode/markdown-mode"
  "Major mode for editing Markdown files" t)

(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq markdown-command "rdiscount")

(add-hook
 'markdown-mode-hook
 '(lambda ()
    (define-key markdown-mode-map (kbd "A-r") 'markdown-preview)))