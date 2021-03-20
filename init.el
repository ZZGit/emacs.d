(require 'package)

;; 国内源
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(package-initialize)

;; 显示行号
(global-linum-mode 1)

;; 关闭工具栏
(tool-bar-mode -1)

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

;; magit git管理工具
;; https://github.com/magit/magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))
