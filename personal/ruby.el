(setq ruby-insert-encoding-magic-comment nil) ; 不在文件头插入文件编码行
(setq whitespace-global-modes nil) ; 不自动删除多余空格
(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
