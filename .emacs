;;; package repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;; initialize packages
(package-initialize)

;;; enable evil mode
(require 'evil)
(evil-mode 1)

;;; install solarized
(load-theme 'solarized-light t)

;;; setup load path, autoloads and the lisp systems
(add-to-list 'load-path "~/repos/github/slime")
(require 'slime-autoloads)

;;; setup lisp system and slime contribs
(setq inferior-lisp-program "~/lw-images/lw61-console")
(setq slime-contribs '(slime-fancy))

;;; slime selector
(global-set-key "\C-cs" 'slime-selector)
