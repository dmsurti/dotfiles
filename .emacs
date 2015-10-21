;;; package repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;; initialize packages
(package-initialize)

;;; enable evil mode
;(require 'evil)
;(evil-mode 1)

;;; install solarized
;(load-theme 'solarized-light t)

;;; set up quicklisp slime helper, slime contribs and various lisps
;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;(setq slime-lisp-implementations
;      '((lispworks ("~/lw-images/lw61-console"))
;        (sbcl ("/usr/local/bin/sbcl"))))
;(require 'slime-autoloads)
;(setq slime-contribs '(slime-fancy))
;
;;;; slime selector
;(global-set-key "\C-cs" 'slime-selector)
;
;;;; neotree
;(require 'neotree)
;(global-set-key [f6] 'neotree-toggle)
;
;;;; helm equivalent of command-t
;(require 'helm-config)
;(helm-mode 1)
