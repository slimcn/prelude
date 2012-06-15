;;; frame size
(setq default-frame-alist '((height . 36) (width . 1111) (menu-bar-lines . 20) (tool-bar-lines . 0)))



;;{{{  speedbar within frame
(require 'speedbar)
(defvar my-speedbar-buffer-name
  (if (buffer-live-p speedbar-buffer)
      (buffer-name speedbar-buffer)
    "*SpeedBar*"))
(defun my-speedbar-no-separate-frame ()
  (interactive)
  (when (not (buffer-live-p speedbar-buffer))
    (setq speedbar-buffer (get-buffer-create my-speedbar-buffer-name)
          speedbar-frame (selected-frame)
          dframe-attached-frame (selected-frame)
          speedbar-select-frame-method 'attached
          speedbar-verbosity-level 0
          speedbar-last-selected-file nil)
    (set-buffer speedbar-buffer)
    (speedbar-mode)
    (speedbar-reconfigure-keymaps)
    (speedbar-update-contents)
    (speedbar-set-timer 1)
    (make-local-hook 'kill-buffer-hook)
    (add-hook 'kill-buffer-hook
              (lambda () (when (eq (current-buffer) speedbar-buffer)
                           (setq speedbar-frame nil
                                 dframe-attached-frame nil
                                 speedbar-buffer nil)
                           (speedbar-set-timer nil)))))
  (set-window-buffer (selected-window)
                     (get-buffer my-speedbar-buffer-name)))
;;}}}
