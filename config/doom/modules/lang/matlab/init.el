;;; init.el --- description -*- lexical-binding: t; -*-


(setq matlab-indent-function t)
(setq matlab-shell-command "/Applications/MATLAB_R2017b.app/bin/matlab")
(setq matlab-shell-command-switches (list "-nodesktop"));; setup matlab in babel

(setq org-babel-default-header-args:matlab
  '((:results . "output") (:session . "*MATLAB*")))

