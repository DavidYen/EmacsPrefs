;; By David Yen, Simply loads emacs preferences.
(defun load_emacs_prefs ()
  ;; Backup settings
  (setq
     backup-by-copying t
     backup-directory-alist '(("." . "~/.emacs_backups"))
     delete-old-versions t
     kept-new-versions 6
     kept-old-versions 2
     version-control t)

  ;; Spaces instead of tabs
  (setq-default indent-tabs-mode nil)

  ;; Show column number
  (setq column-number-mode t)

  ;; Whitespace settings
  (require 'whitespace)
  (add-hook 'after-change-major-mode-hook 'whitespace-mode)
  (setq-default whitespace-style '(space-mark tab-mark))

  ;; 80 Column Marker
  (require 'fill-column-indicator)
  (add-hook 'after-change-major-mode-hook 'fci-mode)
  (setq-default fci-rule-column 80)

  ;; Highlight whole word
  (load-library "extend-selection")
  (global-set-key (kbd "M-8") 'extend-selection)

  ;; Highlight all occurances of words
  (require 'highlight-symbol)
  (add-hook 'after-change-major-mode-hook 'highlight-symbol-mode)
  (setq-default highlight-symbol-idle-delay 0.5)
)
