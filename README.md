# 我的Emacs

```shell
git clone git@gitee.com:strongfish/emacs.d.git ~/.emacs.d
```

## 常用快捷键

### 通用操作
| 快捷键  | 命令                    | 说明                 |
|---------|-------------------------|----------------------|
| C-x C-c | save-buffers-kill-emacs | 退出并保存           |
| C-h k   | describe-key            | 查看快捷键对应的命令 |
| C-n     | make-frame              | 打开新的frame        |
| s-`     | other-frame             | 切换frame            |
| C-x h   |                         | 全选                 |

### [expand-region](https://github.com/magnars/expand-region.el)
| 快捷键 | 命令          | 说明         |
|--------|---------------|--------------|
| C-=    | expand-region | 快速选中文本 |

### [Projectile](https://github.com/bbatsov/projectile)
| 快捷键    | 命令 | 说明          |
|-----------|------|---------------|
| C-c p s s |      | 全局查找搜索  |
| C-c p f f |      | 全局f搜索文件 |

### undo-tree
| 快捷键  | 命令                    | 说明              |
|---------|-------------------------|-------------------|
| C-/     | undo-tree-undo          | 撤销操作          |
| C-?     | undo-tree-redo          | 恢复操作          |
| C-x u   | undo-tree-visualize     | 图形撤销/恢复操作 |

### [Markdown](https://jblevins.org/projects/markdown-mode/ "Markdown")
| 快捷键  | 命令                  | 说明     |
|---------|-----------------------|----------|
| C-c C-l | markdown-insert-link  | 插入链接 |
| C-c C-i | markdown-insert-image | 插入图片 |

### [Paredit](https://wikemacs.org/wiki/Paredit-mode "Paredit")
| 快捷键 | 命令             | 说明           |
|--------|------------------|----------------|
| C-M-d  | down-list        | 移到下层表达式 |
| C-M-u  | backward-up-list | 移到上层表达式 |
|        |                  |                |
