(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
