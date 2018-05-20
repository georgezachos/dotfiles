;;; init.el -*- lexical-binding: t; -*-


;;
(doom! :feature
      ;debugger
       eval
       (evil +everywhere)
       (lookup +devdocs +docsets)
       snippets
       file-templates
       spellcheck
       (syntax-checker +childframe)
       version-control
       workspaces

       :completion
       (company +auto +childframe)
       (ivy +childframe)
      ;helm
      ;ido

       :ui
       (popup +all +defaults)
       doom
       doom-dashboard
       doom-modeline
      ;doom-quit
       hl-todo
       nav-flash
       evil-goggles
      ;unicode
      ;tabbar
       neotree
       vi-tilde-fringe
       window-select

       :tools
       dired
       editorconfig
       electric-indent
       eshell
      ;gist
      ;services
       imenu
       macos
       magit
      ;make
      ;password-store
       pdf
       ranger
       rotate-text
       term
       tmux
       ein
      ;upload

       :lang
      ;assembly
       cc
      ;crystal
      ;clojure
       csharp
       data
      ;elixir
      ;elm
       emacs-lisp
      ;ess
      ;go
       haskell
       ;; (haskell +intero)
      ;hy
      ;(java +meghanada)
       javascript
       julia
       latex
      ;ledger
      ;lua
       markdown
      ;ocaml
       (org +attach +babel +capture +export +present)
      ;perl
      ;php
      ;plantuml
      ;purescript
       python
      ;rest
      ;ruby
      ;rust
      ;scala
       sh
      ;swift
       web
       faust
       tidal
       matlab

       :app
      ;crm
       (email +gmail)
      ;irc
      ;regex
      ;rss
      ;torrents
      ;twitter
      ;(write
      ; +wordnut
      ; +langtool)

       :collab
       impatient-mode
       :config
       (default +bindings +snippets +evil-commands))
