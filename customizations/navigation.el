;; http://www.emacswiki.org/emacs/InteractivelyDoThings
;(ido-mode t)

;; This allows partial matches, e.g. "tl" will match "Tyrion Lannister"
;(setq ido-enable-flex-matching t)

;; Project based magic finding
(require 'helm-config)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
;(helm-projectile-on)
