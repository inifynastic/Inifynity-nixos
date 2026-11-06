;; Evil
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  :config
  (evil-mode 1))
 ;; (global-set-key (kbd "C-r") #'undo-redo)


;; C/C++
(setq c-default-style "linux"
      c-basic-offset 4)

;; To lessen flutter being a bitch
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
  
;; Languages
(use-package nix-mode)
(use-package cmake-mode)

(use-package cmake-font-lock
  :after cmake-mode)



;; Auto-close brackets, quotes, etc.
(electric-pair-mode 1)

;; LSP
(use-package eglot
  :hook ((c-mode
          c++-mode
          cmake-mode
          python-mode
          ruby-mode
          nix-mode
          bash-ts-mode
	  dart-mode)
         . eglot-ensure))
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(dart-mode . ("dart" "language-server" "--protocol=lsp"))))

;; QML
(use-package qml-ts-mode
  :vc (:url "https://github.com/xhcoding/qml-ts-mode" :rev :newest)
  :mode "\\.qml\\'"
  :hook (qml-ts-mode . eglot-ensure))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(qml-ts-mode . ("qmlls" "-E"))))

(with-eval-after-load 'treesit
  (add-to-list 'treesit-language-source-alist
               '(qmljs "https://github.com/yuja/tree-sitter-qmljs")))

;; Treemacs
(use-package treemacs
  :after evil)

(define-key evil-normal-state-map
  (kbd "C-1")
  #'treemacs)

(use-package treemacs-evil
  :after (treemacs evil))

(use-package treemacs-projectile
  :after (treemacs projectile))


;; Projectile
(use-package projectile
  :init
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))



;; Completion
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 1)
  :init
  (global-corfu-mode))


;; M-x / buffer / file completion
(use-package vertico
  :init
  (vertico-mode))


