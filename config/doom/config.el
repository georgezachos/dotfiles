;;; private/hlissner/config.el -*- lexical-binding: t; -*-

;; (defvar xdg-data (getenv "XDG_DATA_HOME"))
;; (defvar xdg-bin (getenv "XDG_BIN_HOME"))
;; (defvar xdg-cache (getenv "XDG_CACHE_HOME"))
;; (defvar xdg-config (getenv "XDG_CONFIG_HOME"))

(setq +doom-modeline-buffer-file-name-style 'relative-from-project
      show-trailing-whitespace t
      org-babel-python-command "python3"
      flycheck-python-pycompile-executable "python3"
      ;; org
      +org-dir (expand-file-name "~/code/org/")
      org-ellipsis " ▼ "
      org-bullets-bullet-list '("#")
      ;; mu4e
      ;; mu4e-maildir        (expand-file-name "mail" xdg-data)
      ;; mu4e-attachment-dir (expand-file-name "attachments" mu4e-maildir)
      )

(add-hook! minibuffer-setup (setq-local show-trailing-whitespace nil))
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

; (add-hook 'python-mode-hook 'blacken-mode)

(org-babel-do-load-languages
'org-babel-load-languages
'((emacs-lisp . t)
   (python . t)
   (shell . t)
   (matlab . t)
   (haskell . t)
   ;; (dot . t)
   ;; (R . t)
   ;; (gnuplot . t)
   ;;(sclang . t)
   ))

;; (require 'company)
;; (setq company-idle-delay 0.2
;;       company-minimum-prefix-length 3)

(setq user-full-name    "George Zachos"
      user-mail-address "gzorge@gmail.com"
      ;; doom-variable-pitch-font (font-spec :family "Fira Sans")
      ;; doom-unicode-font (font-spec :family "Input Mono Narrow" :size 12)
      doom-big-font (font-spec :family "Input" :size 19))


(setq ivy-height 12
      +doom-modeline-height 24
      ivy-posframe-font (font-spec :family "Input Mono Condensed" :size 12)
      doom-font (font-spec :family "Input Mono Condensed" :size 12 :weight 'Extra-light))

(when IS-MAC
  (setq ns-use-thin-smoothing t)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  ;; maximize first frame
  (set-frame-parameter nil 'fullscreen 'maximized))

;;
;; UI
;;

;; (toggle-frame-fullscreen)
;; (toggle-frame-maximized)

;;
;; Keybindings
;;

(map!
 (:leader
   (:prefix "f"
     :desc "Find file in dotfiles" :n "t" #'+hlissner/find-in-dotfiles
     :desc "Browse dotfiles"       :n "T" #'+hlissner/browse-dotfiles)
   (:prefix "n"
     :desc "Browse mode notes"     :n  "m" #'+hlissner/find-notes-for-major-mode
     :desc "Browse project notes"  :n  "p" #'+hlissner/find-notes-for-project)))

;; (after! tidal-mode
;;   (setq intero-mode nil))
