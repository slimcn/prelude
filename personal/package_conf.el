;;; note: needed to add ../personal/package dir and download package
;;; to this dir, such as for rails is
;;; "../personal/package/emacs-rails" dir

(defvar person-package-dir (concat prelude-personal-dir "package/"))

;; unelpa package list
(defvar person-unelpas '((rails "emacs-rails")      ; https://github.com/remvee/emacs-rails
                         (weibo "weibo")            ; sina weibo https://github.com/austin-----/weibo.emacs
                         ))

;; load path unelpa packages
(dolist (p person-unelpas)
  (add-to-list 'load-path (expand-file-name (concat person-package-dir (car (cdr p)))))
  (require (car p)))

; (require 'org2blog-autoloads)
; (setq org2blog/wp-blog-alist
;       '(("blog_ihaigui"
;          :url "http://blog.ihaigui.org/xmlrpc.php"
;          :username "sjm")))
