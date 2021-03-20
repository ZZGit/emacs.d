;;; #init-ivy.el
;;; http://oremacs.com/swiper/#installation

(use-package ivy
  :diminish (ivy-mode . "")
  :init (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-height 20)
  (setq ivy-count-format "%d/%d "))


(provide 'init-ivy)
