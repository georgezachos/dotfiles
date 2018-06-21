(add-to-list 'load-path "~/code/scel/el")
(setenv "PATH" (concat (getenv "PATH") ":/Applications/SuperCollider:/Applications/SuperCollider/SuperCollider.app/Contents/MacOS"))
(setq exec-path (append exec-path '("/Applications/SuperCollider"  "/Applications/SuperCollider/SuperCollider.app/Contents/MacOS" )))

(add-hook! sclang-mode-hook sclang-extensions-mode)
