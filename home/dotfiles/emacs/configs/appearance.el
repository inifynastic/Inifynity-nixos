(setq inhibit-startup-message t)

(menu-bar-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode t)
(show-paren-mode 1)
(global-hl-line-mode 1)
(column-number-mode 1)

(global-display-fill-column-indicator-mode 1)
(setq-default fill-column 100)

(set-face-attribute 'fill-column-indicator nil
                    :foreground "#FFFFFF")

(load-theme 'modus-vivendi t)