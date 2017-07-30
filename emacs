(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq undo-limit 2000000)
(setq undo-strong-limit 4000000)

(tool-bar-mode 0)

(defun insert-timeofday ()
  (interactive "*")
  (insert (format-time-string "-------- %y-%b-%d %H:%M")))

(display-time)

(split-window-horizontally)
