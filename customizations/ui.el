;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Mmm, pretty.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;(load-theme 'solarized-dark t)
