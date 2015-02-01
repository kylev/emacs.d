;; Enable paredit minor mode for clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; This makes moving wit camel case works a little easier
(add-hook 'clojure-mode-hook 'subword-mode)

;; A little more syntax highlighting
(require 'clojure-mode-extra-font-locking)
