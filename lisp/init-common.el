;;; #init-common.el

;;; http://oremacs.com/swiper/#installation

;; (use-package ivy
;;   :ensure t
;;   :diminish (ivy-mode . "")
;;   :init (ivy-mode 1)
;;   :config
;;   (setq ivy-use-virtual-buffers t)
;;   (setq ivy-height 10)
;;   (setq ivy-count-format "%d/%d "))

;; (use-package counsel
;;   :ensure t
;;   :bind*
;;   (("M-x"     . counsel-M-x)
;;    ("C-s"     . swiper)
;;    ))

;; https://emacs-helm.github.io/helm
(use-package helm
  :ensure t
  :init (helm-mode 1)
  :bind (("M-x" . helm-M-x)))

(use-package ag
  :ensure t)

;; https://company-mode.github.io/
(use-package company
  :ensure t
  :init (company-mode 1)
  :config (global-company-mode t))

;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t
  :pin melpa-stable
  :init
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  :config
  (setq projectile-completion-system 'ivy))

;;https://github.com/wolray/symbol-overlay
(use-package symbol-overlay
  :ensure t
  :bind (("M-i" . symbol-overlay-put)
	 ("M-n" . symbol-overlay-jump-next)
	 ("M-p" . symbol-overlay-jump-prev)
	 ("<f7>" . symbol-overlay-mode)
	 ("<f8>" . symbol-overlay-remove-all)))

;; https://github.com/purcell/exec-path-from-shell
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; https://github.com/magnars/expand-region.el
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

;; https://github.com/dimitri/switch-window#org1901772
(use-package switch-window
  :ensure t
  :bind (("C-x o" . switch-window)))

;;https://github.com/akicho8/string-inflection
(use-package string-inflection
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  :config
  (rainbow-delimiters-mode 1))

(provide 'init-common)
