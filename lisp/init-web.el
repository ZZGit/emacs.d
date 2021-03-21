
;; https://web-mode.org
(use-package web-mode
  :ensure t
  :mode "\\.html?\\'")

;; https://github.com/smihica/emmet-mode
(use-package emmet-mode
  :ensure t
  :hook (sgml-mode-hook css-mode-hook web-mode-hook)
  :config (emmet-mode 1))

;; https://github.com/mooz/js2-mode
(use-package js2-mode
  :ensure t
  :mode "\\.js?\\'")

;; https://github.com/yasuyk/web-beautify
;;(use-package web-beautify
;;  :ensure t
;;  :hook (sgml-mode-hook css-mode-hook web-mode-hook js2-mode-hook)
;;  :bind (:map js2-mode-map
;;	 ("C-c b" . web-beautify-js))
;;  )

(provide 'init-web)
