(setq ruby-insert-encoding-magic-comment nil) ; 不在文件头插入文件编码行
;; 无法关闭清除空格,使用下面的函数 (setq whitespace-global-modes nil) ; 不自动删除多余空格
(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
