;; Package system
(require 'package)

(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(setq package-install-upgrade-built-in t)


;; Clipboard
(setq select-enable-clipboard t)
(setq select-enable-primary t)


;; Recent files
(recentf-mode 1)
(setq recentf-max-saved-items 100)


;; Restore cursor position
(save-place-mode 1)


;; Session
(setq desktop-path (list user-emacs-directory))
(setq desktop-dirname user-emacs-directory)
(setq desktop-base-file-name "desktop")

(desktop-save-mode 1)


;; Editing behavior
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

(electric-indent-mode -1)