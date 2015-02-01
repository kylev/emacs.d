;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Idiot profing
(setq confirm-kill-emacs 'yes-or-no-p)
;; Single user machine, no locks
(setq create-lockfiles nil)

;; Mmm, pretty.
(set-default 'frame-background-mode 'dark)
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized")
(load-theme 'solarized t)
(enable-theme 'solarized)
