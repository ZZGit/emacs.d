;; #init-basic.el

;; 显示行号
(global-linum-mode 1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 高亮当前行
(global-hl-line-mode 1)

;; org-mode从9.2之后，默认不在支持<s + tab的代码模板快捷键，需要手动开启
(if (string> (org-version) "9.2.0")
    (require 'org-tempo))

;; 快捷键f2打开Reamde
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/README.md"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; 默认窗口最大
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(provide 'init-basic)
