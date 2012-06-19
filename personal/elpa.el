;; elpa package list (require-mode elpa-name)
(defvar person-elpas '((twittering-mode twittering-mode)
                       (ruby-electric ruby-electric)
                       (flymake-ruby flymake-ruby)
                       (auto-complete auto-complete)
                       ))

;; install elpa packages
(dolist (p person-elpas)
  (unless (package-installed-p (car (cdr p)))
    (package-install (car (cdr p)))))

;; rquire elpa packages
(dolist (p person-elpas)
  (require (car p)))

;; flymake-ruby config
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
