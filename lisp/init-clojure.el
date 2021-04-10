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

;;https://github.com/clojure-emacs/clj-refactor.el
(use-package clj-refactor
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'clj-refactor-mode)
  :config
  (clj-refactor-mode 1)
  ;; Configure the Clojure Refactoring prefix:
  (cljr-add-keybindings-with-prefix "C-c C-m")
  :diminish clj-refactor-mode)

(provide 'init-clojure)
