(message "✅ init.el loaded!")

(defun my/open-init ()
  (interactive)
  (find-file user-init-file))

(defun my/open-default-file ()
  (interactive)
  (let ((filename (format "~/Documents/temp-%s.txt"
                          (format-time-string "%Y%m%d-%H%M%S"))))
    (find-file filename)))

(add-hook 'emacs-startup-hook
          (lambda ()
            (my/open-init)
            (my/open-default-file)))

(global-set-key (kbd "C-c i") 'my/open-init)
(global-set-key (kbd "C-c n") 'my/open-default-file)

;; Always open .txt files in org-mode
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(defun reload-init-file ()
  "Reload init.el without restarting Emacs."
  (interactive)
  (load-file user-init-file)
  (message "✅ Reloaded init.el"))

(global-set-key (kbd "C-c r") 'reload-init-file)
