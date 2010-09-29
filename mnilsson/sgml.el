(setq sgml-basic-offset 4)
(defun mnilsson-sgml-mode-hook ()
  (setq fill-column 10000
        indent-tabs-mode nil
        next-line-add-newlines nil
        standard-indent 4
        tab-width 4))

(setq sgml-mode-hook 'mnilsson-sgml-mode-hook)

(add-hook 'html-mode-hook
          (lambda ()
            (sgml-guess-indent)))
