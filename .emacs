(require 'package)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))


(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For compatibility
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)



(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(require 'org) 
(org-babel-load-file (expand-file-name (concat "~/.emacs.d/" "myinit.org")))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" default)))
 '(latex-preview-pane-use-frame nil)
 '(org-agenda-files
   (quote
    ("/home/juanma/Desktop/Ruta Ganadora/universidad.org" "/home/juanma/Desktop/Ruta Ganadora/semanal.org" "/home/juanma/Desktop/Ruta Ganadora/mivida.org" "/home/juanma/Desktop/Ruta Ganadora/gcal.org")))
 '(org-capture-templates
   (quote
    (("s" "Revision Semanal" entry
      (file "/home/juanma/Desktop/Ruta Ganadora/semanal.org")
      (file "/home/juanma/Desktop/Ruta Ganadora/Templates/plantilla_semanal.txt")))))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
   (quote
    (ido-mode ranger org-gcal org-pdfview pdf-tools spacemacs-theme multiple-cursors elpy org-bullets helm f nov dash-functional org-beautify-theme try use-package magit)))
 '(python-shell-interpreter "python2")
 '(shell-escape-mode "-shell-escape"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)

(require 'org-ref)
