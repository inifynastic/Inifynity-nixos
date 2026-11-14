;; Luau
(use-package lua-mode
  :ensure t
  :mode "\\.luau?\\'")

(use-package eglot-luau
  :vc (:url "https://github.com/kennethloeffler/eglot-luau"
       :rev :newest)
  :autoload (eglot-luau-setup)
  :hook
  (lua-mode . (lambda ()
                (eglot-luau-setup 'lua-mode)
                (eglot-ensure)))
  :custom
  (eglot-luau-auto-update-roblox-docs t)
  (eglot-luau-auto-update-roblox-types t))