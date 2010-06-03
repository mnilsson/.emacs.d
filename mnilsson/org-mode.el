(add-to-list 'load-path "~/Development/Vendor/org-mode/lisp")
(add-to-list 'load-path "~/Development/Vendor/org-mode/contrib/lisp")


(transient-mark-mode 1)
(setq org-log-done t)
(add-hook 'org-mode-hook 'turn-on-font-lock)

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\)$" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-use-fast-todo-selection t)


(setq org-treat-S-cursor-todo-selection-as-state-change nil)



(setq org-agenda-files (quote ("~/org/todo.org_archive" "~/org/todo.org")))


(setq org-todo-keyword-faces (
                              quote (
                                     ("TODO" :foreground "red" :weight bold)
                                     ("STARTED" :foreground "blue" :weight bold)
                                     ("DONE" :foreground "forest green" :weight bold)
                                     ("WAITING" :foreground "orange" :weight bold)
                                     ("CANCELLED" :foreground "forest green" :weight bold)
                                     ("DELEGATED" :foreground "forest green" :weight bold)
                                     )
                                    )
      )