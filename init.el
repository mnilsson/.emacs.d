(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load "mnilsson/defuns")
(load "mnilsson/global")
(load "mnilsson/modes")
(load "mnilsson/php")
(load "mnilsson/keybindings")
(load "mnilsson/sgml")
(load "mnilsson/markdown")

(vendor 'cheat)
(vendor 'magit)
