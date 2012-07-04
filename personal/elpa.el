;; elpa package list (require-mode elpa-name)
(defvar person-elpas '((twittering-mode twittering-mode)
                       (ruby-electric ruby-electric)
                       (flymake-ruby flymake-ruby)
                       (auto-complete auto-complete)
                       (bitlbee bitlbee)
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

;; close electric-pair-mode when ruby-electric
(add-hook 'ruby-mode-hoo 'electric-pair-mode)

;; twittering-mode config
(setq twittering-use-ssl nil twittering-oauth-use-ssl nil)
(setq twittering-icon-mode 1)
(setq twittering-enabled-services '(sina))
(setq twittering-accounts '((sina (username "shangjingmin@gmail.com")
                                  (auth oauth))))
