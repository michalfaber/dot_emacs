;; load the configuration from the `after-init-hook' so all packages are loaded
(add-hook 'after-init-hook
 `(lambda ()
    ;; get the root directory
    (setq emacs-root-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))

    ;; load org-mode
    (require 'org)

    ;; load up my configuration
    (org-babel-load-file (expand-file-name "mfaber.org" emacs-root-dir))
    ))
