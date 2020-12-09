;;;  -*- lexical-binding: t; -*-

(doom! :feature
                                        ;;debugger
       ;; +docsets)
       ;; syntax-checker ;;+childframe)

       :emacs
       dired
       electric
       vc

       :term
       vterm

       :completion
       (company +childframe)

                                        ;;the ultimate code completion backend
       ;; (helm +fuzzy)                    ;;+childframe)
                                        ;;ido
       (ivy
        +childframe
        ;; +fuzzy
        +prescient)

       :ui
       doom
       doom-dashboard
       modeline
       doom-quit
       ophints
       hl-todo
       workspaces
       nav-flash
       indent-guides
       ;;tabbar
       vc-gutter
       vi-tilde-fringe
       window-select
       (popup
        +all
        +defaults)
       ;;neotree
       treemacs
       ;;(pretty-code +fira)
       ligature

       :tools
       eval
       (lookup
        +devdocs)
       lsp
       gist
       ;;macos
       make
       magit                            ;;
       pass
       pdf
       prodigy
       ;;rgb
       tmux
       upload
       editorconfig
       (flycheck +childframe)
       direnv
       ;; wakatime

       :lang
       assembly
       cc
       ;;crystal
       ;;clojure
       ;;csharp
       data
       ;;elixir
       elm
       emacs-lisp
       ;ess
       go
       (haskell +dante)
       hy
       ;;(java +meghanada)
       (javascript +lsp)
       ;;julia
       latex
       ledger
       lua
       markdown
       idris
       nix
       ocaml
       (org
        +attach
        +babel
        +capture
        +export
        +present
        +publish)
       perl
       ;;php
       plantuml
       purescript
       (python +lsp)
       rest
       ;;ruby
       (rust +lsp)
       ;; scala
       sh
       swift
       web

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;;(email +gmail)
       irc
       ;;(rss +org)
       twitter
       (write
        +wordnut
        +langtool)

       :editor
       (evil +everywhere)
       file-templates
       snippets
       ;; lispyville
       parinfer
       rotate-text
       fold
       multiple-cursors
       (format +onsave)

       :completion
        (lsp
         +javascript
         +go
         +css
         +rust
         +cpp
         ;;+ocaml
         ;;+java
         +python
         +sh)

       :term

       eshell

       :config
       ;; The default module set reasonable defaults for Emacs. It also provides
       ;; a Spacemacs-inspired keybinding scheme, a custom yasnippet library,
       ;; and additional ex commands for evil-mode. Use it as a reference for
       ;; your own modules.
       (default +bindings +snippets +evil-commands +smartparens))


;;(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;;(setq initial-frame-alist '((top . 1) (left . 1) (width . 300) (height . 80)))

;; maximize fullscreen on startup
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      truncate-string-ellipsis "…")               ; Unicode ellispis are nicer than "...", and also save /precious/ space

(display-time-mode 1)                             ; Enable time in the mode-line
(unless (equal "Battery status not available"
               (battery))
  (display-battery-mode 1))                       ; On laptops it's nice to know how much power you have
(global-subword-mode 1)                           ; Iterate through CamelCase words
