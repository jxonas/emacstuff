;; remember this directory
(setq emacstuff-dir (file-name-directory (or load-file-name (buffer-file-name))))

(defsubst emacstuff-file (file)
  (expand-file-name file emacstuff-dir))

;;;
;;; Org Mode
;;;
(add-to-list 'load-path (emacstuff-file "org-mode/lisp"))
(add-to-list 'load-path (emacstuff-file "org-mode/contrib/lisp") 'append)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org-loaddefs)

;;; Load emacstuff
(org-babel-load-file (expand-file-name "emacstuff.org" emacstuff-dir))

;; end of init.el
