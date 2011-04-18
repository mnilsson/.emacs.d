(add-to-list 'load-path "~/.emacs.d/vendor/org-mode")
(require 'org-install)
(require 'org-habit)
(transient-mark-mode 1)
(setq org-log-done t)
(add-hook 'org-mode-hook 'turn-on-font-lock)

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\)$" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-use-fast-todo-selection t)

(setq org-treat-S-cursor-todo-selection-as-state-change nil)



(setq org-agenda-files (file-expand-wildcards "~/org/*.org"))

(setq org-todo-keywords
           '((sequence "TODO(t)" "|" "DONE(d!/!)" "|" "STARTED(s!)")
             (sequence "WAITING(w)" "CANCELED(c!)" "DELEGATED(l!)")))

(setq org-columns-default-format "%80ITEM(Task) %10Effort(Effort){:} %10Quote")
(setq org-global-properties (quote (("Effort_ALL" . "0:10 0:30 1:00 2:00 3:00 4:00 5:00 6:00 7:00 8:00"))))

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

(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "refile.org"))
(global-set-key (kbd "C-M-r") 'org-capture)
  
(setq org-capture-templates (quote (("t" "todo" entry (file "~/org/refile.org") "* TODO %?\n%T")
                                      ("n" "note" entry (file "~/org/refile.org") "* %?\n%U")
                                      ("j" "Journal" entry (file+datetree "~/org/diary.org") "* %?\n%T"))))
