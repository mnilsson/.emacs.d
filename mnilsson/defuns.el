(defun electric-pair ()
  ""
  (interactive)
  (if(eolp) (let (parens-require-spaces) (insert-pair))
    (self-insert-command 1)))


(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el")))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
     ((file-exists-p suffix) (require library)))))

(defun toggle-option-key-is-meta ()
  "Toggles wether option key is meta or not"
  (interactive)
  (if (eq mac-option-modifier 'meta)
      (progn (setq mac-option-modifier nil)
             (message "option key is not meta"))
    (progn (setq mac-option-modifier 'meta)
           (message "option key is meta"))))
