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


;(setq org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)")
;                                (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "OPEN(O@)" "|" "CANCELLED(c@/!)"))))

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

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("WAITING" . t) ("NEXT"))
              ("SOMEDAY" ("WAITING" . t))
              (done ("NEXT") ("WAITING"))
              ("TODO" ("WAITING") ("CANCELLED") ("NEXT"))
              ("STARTED" ("WAITING"))
              ("DONE" ("WAITING") ("CANCELLED") ("NEXT")))))


;(defun org-summary-todo (n-done n-not-done)
;       "Switch entry to DONE when all subentries are done, to TODO otherwise."
;       (let (org-log-done org-log-states)   ; turn off logging
;         (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

;     (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


(setq org-mobile-directory "/scpc:mnilsson@mnilsson.se:2078:org/")


(setq org-ditaa-jar-path "~/Development/Vendor/org-mode/contrib/scripts/ditaa0_9.jar")
(require 'org-babel-init)
(require 'org-babel-dot)
(require 'org-babel-ditaa)
(org-babel-load-library-of-babel)
