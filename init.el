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

;; 加载./lisp/* 配置文件
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-basic)

;; 主题
;;(require 'init-theme)

;; ivy
(require 'init-ivy)

;; git
(require 'init-git)

;; web开发
(require 'init-web)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-beautify js2-mode json-mode emmet-mode web-mode spacemacs-theme counsel magit ivy use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
