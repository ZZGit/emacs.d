;; https://github.com/clojure-emacs/clojure-mode
(use-package clojure-mode
  :ensure t)

;; https://github.com/clojure-emacs/cider
(use-package cider
  :ensure t)

;; https://wikemacs.org/wiki/Paredit-mode
(use-package paredit
  :ensure t
  :init (paredit-mode 1)
  :hook (emacs-lisp-mode-hook lisp-mode-hook lisp-interaction-mode-hook scheme-mode-hook
	 cider-repl-mode-hook cider-mode-hook clojure-mode-hook))

(provide 'init-clojure)
