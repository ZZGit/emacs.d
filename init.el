(require 'package)

;; 国内源
;;(setq package-archives
;;      '(("gnu"   . "http://elpa.emacs-china.org/gnu/")			
;;	("melpa" . "http://elpa.emacs-china.org/melpa/")
;;	))

(setq package-archives '(("gnu"   . "https://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "https://mirrors.cloud.tencent.com/elpa/melpa/")
			 ("melpa-stable" . "https://mirrors.cloud.tencent.com/elpa/melpa-stable/")))

(package-initialize)


;; use-package
;; https://github.com/jwiegley/use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; 加载./lisp/* 配置文件
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 基本配置
(require 'init-basic)

;; 主题
(require 'init-theme)

;; 通用
(require 'init-common)

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
   '(clj-refactor symbol-overlay js2-refactor ac-js2 company auto-complete projectile switch-window expand-region paredit exec-path-from-shell cider clojure-mode cnfonts markdown-mode undo-tree web-beautify js2-mode json-mode emmet-mode web-mode spacemacs-theme counsel magit ivy use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
