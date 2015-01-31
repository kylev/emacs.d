(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Automated package installation from list
(defvar my-packages
  '(;; Better lisp expressions
    paredit
    ;; Double-pretty clojure
    clojure-mode
    clojure-mode-extra-font-locking
    ;; GIT!
    magit
    ))

;; Handle strange OSX "launched from GUI" shell problems
(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Set up exec-path-from-shell
(load "shell-integration.el")
;; Minor tweaks to the way I edit
(load "editing.el")
;; Pretty stuff
(load "ui.el")
