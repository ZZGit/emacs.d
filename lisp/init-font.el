;; https://github.com/tumashu/cnfonts
(use-package cnfonts
  :ensure t
  :init (cnfonts-enable)
  :bind (("C-+" . cnfonts-increase-fontsize)
	 ("C--" . cnfonts-decrease-fontsize)))

(provide 'init-fonts)
