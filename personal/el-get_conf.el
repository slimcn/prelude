(setq my-el-get-path "~/.emacs.d/el-get/")
(add-to-list 'load-path (concat my-el-get-path "el-get") )

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

(setq el-get-sources
      '((:name ruby-mode
               :type elpa
               :load "ruby-mode.el"
               :after ((autoload 'ruby-mode "ruby-mode" nil t)
                       (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
                       (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
                       (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
                       (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
                       (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
                       (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
                       (add-hook 'ruby-mode-hook '(lambda ()
                                                    (setq ruby-deep-arglist t)()
                                                    (setq ruby-deep-indent-paren nil)
                                                    (setq c-tab-always-indent nil)
                                                    (require 'inf-ruby)
                                                    (require 'ruby-compilation)))))
        (:name ruby-compilation :type elpa)
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el"
               :after ((add-to-list 'load-path (concat my-el-get-path "textmate"))
                       (require 'textmate)))
        (:name rvm
               :type git
               :url "http://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after ((autoload 'rvm)))
        (:name rhtml
               :type git
               :url "https://github.com/eschulte/rhtml.git"
               :features rhtml-mode
               :after ((autoload 'rhtml-mode "rhtml-mode" nil t)
                       (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
                       (add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))))
        (:name rinari
               :type git
               :url "https://github.com/eschulte/rinari.git"
               :features rinari
               :compile ("rinari.el")
               :after ((require 'ido)
                       (ido-mode t)
                       (require 'rinari)

                       ))
        ))

; cann't used， loop and el-get-install instead  (el-get 'sync)
(dolist (p el-get-sources)
  (el-get-install (car (cdr p))))
(el-get 'sync)
