
;; https://web-mode.org
(use-package web-mode
  :ensure t
  :mode "\\.html?\\'"
  ;;:bind (("TAB" . web-mode-fold-or-unfold))
  )

;; https://github.com/smihica/emmet-mode
(use-package emmet-mode
  :ensure t
  :hook (sgml-mode-hook css-mode-hook web-mode-hook)
  :config (emmet-mode 1)
  :bind (("C-j" . emmet-expand-line)))

;; https://github.com/mooz/js2-mode
(use-package js2-mode
  :ensure t
  :mode "\\.js?\\'")

;; https://github.com/js-emacs/js2-refactor.el
(use-package js2-refactor
  :ensure t
  :hook (js2-mode-hook))

;; https://github.com/ScottyB/ac-js2
;;(use-package ac-js2
;;  :ensure t
;;  :init (add-to-list 'company-backends 'ac-js2-company)
;;  )

;; https://github.com/yasuyk/web-beautify
;;(use-package web-beautify
;;  :ensure t
;;  :hook (sgml-mode-hook css-mode-hook web-mode-hook js2-mode-hook)
;;  :bind (:map js2-mode-map
;;	 ("C-c b" . web-beautify-js))
;;  )

(provide 'init-web)
