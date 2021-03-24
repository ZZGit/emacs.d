;;; #init-common.el

;;; http://oremacs.com/swiper/#installation
(use-package ivy
  :ensure t
  :diminish (ivy-mode . "")
  :init (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-height 20)
  (setq ivy-count-format "%d/%d "))

(use-package counsel
  :ensure t
  :bind*
  (("M-x"     . counsel-M-x)
   ("C-s"     . swiper)
   ))

(use-package ag
  :ensure t)

;; https://company-mode.github.io/
(use-package company
  :ensure t
  :init (company-mode 1)
  :hook (after-init-hook . global-company-mode))

;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  :config
  (setq projectile-completion-system 'ivy))

(provide 'init-common)
