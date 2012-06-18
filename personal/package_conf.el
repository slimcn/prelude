;;; note: needed to add ../personal/package dir and download package
;;; to this dir, such as for rails is
;;; "../personal/package/emacs-rails" dir

(defvar person-package-dir (concat prelude-personal-dir "package/"))

;; unelpa package list
(defvar person-unelpas '((find-recursive "ror") ; rails model need this http://www.webweavertech.com/ovidiu/emacs/find-recursive.txt
                         (rails "emacs-rails") ; https://github.com/remvee/emacs-rails
                         (sr-speedbar "base") ; same frame speedbar https://github.com/emacsmirror/sr-speedbar.git
                        ;(weibo "weibo")            ; sina weibo https://github.com/austin-----/weibo.emacs
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


;; sr-speedbar config
(setq sr-speedbar-width-x 30)
(setq sr-speedbar-right-side nil)
(sr-speedbar-open)

;; ibus-el config
(add-hook 'after-init-hook 'ibus-mode-on)
