;; #init-basic.el

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
  
(provide 'init-basic)
