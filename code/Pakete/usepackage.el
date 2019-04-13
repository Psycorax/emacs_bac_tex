(use-package example-pack
  :ensure t
  :init (SOME CODE)
  :config (SOME CODE)
  :bind ("C-P" . c-mode)
  :pin melpa
  :hook (a-mode . b-mode)
  :after (PACK1 PACK2)
  :custom (custom-var 10 "Comment")
  )
