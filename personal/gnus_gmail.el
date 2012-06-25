(setq gnus-select-method '(nnml ""))    ; just used to email

;;; Gmail setting
;; edit ~/.authinfo such as: machine imap.gmail.com login username@gmail.com password secret port 993
(setq gnus-select-method '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)))

(setq message-send-mail-function 'smtpmail-send-it
;      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "shangjingmin@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-local-domain "gnus.shang")

;; Make Gnus NOT ignore [Gmail] mailboxes
(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
