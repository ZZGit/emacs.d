(require 'package)

;; 国内源
(setq package-archives
      '(("gnu"   . "http://elpa.emacs-china.org/gnu/")			
	("melpa" . "http://elpa.emacs-china.org/melpa/")
	))

(package-initialize)


;; use-package
;; https://github.com/jwiegley/use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; https://github.com/purcell/exec-path-from-shell
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; https://wikemacs.org/wiki/Paredit-mode
(use-package paredit
  :ensure t
  :init (paredit-mode 1)
  :hook (emacs-lisp-mode-hook lisp-mode-hook lisp-interaction-mode-hook scheme-mode-hook))

;; https://github.com/magnars/expand-region.el
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

;; 加载./lisp/* 配置文件
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 基本配置
(require 'init-basic)

;; 主题
(require 'init-theme)

;; ivy
(require 'init-ivy)

;; git
(require 'init-git)

;; web开发
(require 'init-web)

;; undo-tree
(require 'init-undotree)

;; markdown
(require 'init-markdown)

;; fonts
(require 'init-fonts)

;; clojure 开发
(require 'init-clojure)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (expand-region paredit exec-path-from-shell cider clojure-mode cnfonts markdown-mode undo-tree web-beautify js2-mode json-mode emmet-mode web-mode spacemacs-theme counsel magit ivy use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
