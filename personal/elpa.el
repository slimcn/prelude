
;; elpa package list (require-mode elpa-name)
(defvar person-elpas '((twittering-mode twittering-mode)
                       (ruby-electric ruby-electric)
                       ))

;; install elpa packages
(dolist (p person-elpas)
  (unless (package-installed-p (car (cdr p)))
    (package-install (car (cdr p)))))

;; rquire elpa packages
(dolist (p person-elpas)
  (require (car p)))
