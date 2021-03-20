;;; #init-ivy.el
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

(provide 'init-ivy)
