
(defvar my/config-dir user-emacs-directory
  "Directory holding my own config files (~/.config/emacs/).")

(defun my/load-config (relative-path)
  "Load RELATIVE-PATH from `my/config-dir'."
  (load (expand-file-name relative-path my/config-dir)))

(my/load-config "configs/genfiles.el")

(my/load-config "configs/core.el")
(my/load-config "configs/ide-features.el")
(my/load-config "configs/appearance.el")
(my/load-config "configs/launcher.el")

;; Platform-specific configuration
(cond
 ((eq system-type 'gnu/linux)
  (my/load-config "configs/platforms/linux.el"))
 ((eq system-type 'windows-nt)
  (my/load-config "configs/platforms/windows.el")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
