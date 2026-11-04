;; Core Emacs configuration
(load (expand-file-name "configs/core.el"
                        user-emacs-directory))

;; IDE features
(load (expand-file-name "configs/ide-features.el"
                        user-emacs-directory))

;; Appearance
(load (expand-file-name "configs/appearance.el"
                        user-emacs-directory))

;; Application launcher
(load (expand-file-name "configs/launcher.el"
                        user-emacs-directory))

;; Emacs generated file
(load(expand-file-name "configs/genfiles.el"
		       user-emacs-directory))
;; Platform-specific configuration
(cond
 ((eq system-type 'gnu/linux)
  (load (expand-file-name "configs/platforms/linux.el"
                          user-emacs-directory)))

 ((eq system-type 'windows-nt)
  (load (expand-file-name "configs/platforms/windows.el"
                          user-emacs-directory))))
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
