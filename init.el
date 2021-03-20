(require 'package)

;; 国内源
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")			
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ))

(package-initialize)

;; 显示行号
(global-linum-mode 1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 高亮当前行
(global-hl-line-mode 1)

;; org-mode从9.2之后，默认不在支持<s + tab的代码模板快捷键，需要手动开启
(require 'org-tempo)

;; 快捷键f2打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; use-package
;; https://github.com/jwiegley/use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; 加载./lisp/* 配置文件
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; ivy
(require 'init-ivy)

;; magit git管理工具
;; https://github.com/magit/magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ivy use-package magit)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
