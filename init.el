(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load "mnilsson/defuns")
(load "mnilsson/global")
(load "mnilsson/modes")
(load "mnilsson/keybindings")

(vendor 'cheat)
(vendor 'magit)
