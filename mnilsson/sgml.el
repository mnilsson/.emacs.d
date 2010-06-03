(setq sgml-basic-offset 4)
(defun mnilsson-sgml-mode-hook ()
  (setq fill-column 70
        indent-tabs-mode t
        next-line-add-newlines nil
        standard-indent 4
        tab-width 4
        )
  (set (make-local-variable 'sgml-basic-offset) 4)
)

(add-hook 'html-mode-hook
          (lambda ()
            (set (make-local-variable 'sgml-basic-offset) 4)
            (sgml-guess-indent)))
