;;; init.el -*- lexical-binding: t; -*-

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
       (company +auto)
       (ivy +fuzzy)
      ;helm
      ;ido

       :ui
       (popup +all +defaults +hacks)
       doom
       doom-dashboard
       doom-modeline
      ;doom-quit
       ;; fci
       hl-todo
       nav-flash
       evil-goggles
      ;unicode
       pretty-code
      ;tabbar
       neotree
       ;; treemacs
       vi-tilde-fringe
       window-select

       :emacs
       dired             ; making dired pretty [functional]
       ediff             ; comparing files in Emacs
       electric          ; smarter, keyword-based electric-indent
      ;eshell            ; a consistent, cross-platform shell (WIP)
       imenu             ; an imenu sidebar and searchable code index
      ;term              ; terminals in Emacs

       :tools
       editorconfig
      ;gist
       macos
       magit
      ;make
      ;password-store
       pdf
       rotate-text
       ;; tmux
       ein
       ;; prodigy
       ;; rgb
       ;; upload
       ;; wakatime

       :lang
      ;assembly
       ;; cc
      ;crystal
      ;clojure
       ;; common-lisp
       ;; csharp
       data
       ;; erlang
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
       ;; nim
       ;; nix
      ;ocaml
       (org +attach +babel +capture +export +present)
      ;perl
      ;php
      ;plantuml
      ;purescript
       python
       ;; qt
      ;rest
      ;ruby
      ;rust
      ;scala
       sh
       supercollider
       ;; solidity
      ;swift
       ;; web
       faust
       tidal
       matlab

       :app
       ;; (email +gmail)
      ;irc
      ;rss (+org)
      ;twitter
      ;(write
      ; +wordnut
      ; +langtool)

       :collab
       ;; floobits
       impatient-mode

       :config
       (default +bindings +snippets +evil-commands))
