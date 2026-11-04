;; XDG directories
(defvar my/emacs-data-directory
  (expand-file-name "emacs/" "~/.local/share/"))

(defvar my/emacs-cache-directory
  (expand-file-name "emacs/" "~/.cache/"))

(make-directory my/emacs-data-directory t)
(make-directory my/emacs-cache-directory t)

;; Package storage
(setq package-user-dir
      (expand-file-name "elpa/" my/emacs-data-directory))

;; Backup files
(make-directory
 (expand-file-name "backups/" my/emacs-data-directory) t)

(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups/" my/emacs-data-directory))))

;; Auto-save files
(make-directory
 (expand-file-name "auto-save-list/" my/emacs-data-directory) t)

(setq auto-save-list-file-prefix
      (expand-file-name "auto-save-list/.saves-" my/emacs-data-directory))

;; Recent files
(setq recentf-save-file
      (expand-file-name "recentf" my/emacs-data-directory))

;; Saved cursor positions
(setq save-place-file
      (expand-file-name "places" my/emacs-data-directory))

;; Native compilation cache
(setq native-comp-eln-load-path
      (list (expand-file-name "eln-cache/" my/emacs-cache-directory)))
