;; https://github.com/clojure-emacs/clojure-mode
(use-package clojure-mode
  :ensure t)

;; https://github.com/clojure-emacs/cider
(use-package cider
  :ensure t)

;; https://wikemacs.org/wiki/Paredit-mode
(use-package paredit
  :ensure t
  :init (progn
    (add-hook 'emacs-lisp-mode-hook 'paredit-mode)
    (add-hook 'clojure-mode-hook 'paredit-mode)
    (add-hook 'clojurescript-mode-hook 'paredit-mode)
    (add-hook 'clojurec-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'paredit-mode)))

(provide 'init-clojure)
