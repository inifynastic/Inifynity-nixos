;;; init.el --- -*- lexical-binding: t; -*-

;; Everything Emacs generates goes here; ~/.config/emacs holds only this file.
(defvar my/data-dir
  (expand-file-name "emacs/" (or (getenv "XDG_DATA_HOME") "~/.local/share/")))

(defun my/data (name)
  "Return NAME as an absolute path inside `my/data-dir'."
  (expand-file-name name my/data-dir))

(dolist (dir '("" "backups/" "auto-save/" "auto-save-list/"))
  (make-directory (my/data dir) t))

;; Must come first: packages derive their paths from this when they load.
(setq user-emacs-directory my/data-dir)

;; Native compilation cache (Emacs 29+ helper; it also fixes the load path)
(when (fboundp 'startup-redirect-eln-cache)
  (startup-redirect-eln-cache (my/data "eln-cache/")))

;; package.el was already loaded before init.el ran, so its defaults
;; were computed from the old directory and must be set explicitly.
(setq package-user-dir (my/data "elpa/")
      package-gnupg-directory (my/data "elpa/gnupg/")
      package-quickstart-file (my/data "package-quickstart.el"))

;; Backups, auto-saves, history
(setq backup-directory-alist `(("." . ,(my/data "backups/")))
      auto-save-file-name-transforms `((".*" ,(my/data "auto-save/") t))
      auto-save-list-file-prefix (my/data "auto-save-list/.saves-")
      recentf-save-file (my/data "recentf")
      save-place-file (my/data "places")
      savehist-file (my/data "history")
      project-list-file (my/data "projects")
      bookmark-default-file (my/data "bookmarks"))

;; Stop `customize' from appending to init.el
(setq custom-file (my/data "custom.el"))
(load custom-file 'noerror 'nomessage)

;; Projectile
(setq projectile-known-projects-file (my/data "projectile-bookmarks.eld")
      projectile-cache-file (my/data "projectile.cache"))
