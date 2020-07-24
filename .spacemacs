;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     typescript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     neotree
     docker
     evil-cleverparens
     helm
     emacs-lisp
     git
     markdown
     org
     graphviz
     markdown
     yaml
     (clojure :variables
              clojure-toplevel-inside-comment-form t
              cider-overlays-use-font-lock t)
     (version-control :variables
                      version-control-diff-side 'left
                      version-control-global-margin t)
     (syntax-checking :variables
                      syntax-checking-use-original-bitmaps t)
     auto-completion
     )
   dotspacemacs-additional-packages '(flycheck-clj-kondo all-the-icons modus-operandi-theme modus-vivendi-theme)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(modus-operandi)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Hack"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers '(:visual t
                                       :disabled-for-modes dired-mode
                                       doc-view-mode
                                       pdf-view-mode
                                       :size-limit-kb 1000)
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'all
   ))

(defun dotspacemacs/user-init ()
  )

(defun dotspacemacs/user-config ()
  (use-package modus-operandi-theme :ensure)

  (setq neo-theme 'icons)
  (setq neo-vc-integration '(face))

  (global-company-mode)
  (spacemacs/toggle-evil-cleverparens-on)
  (add-hook 'clojure-mode-hook #'evil-cleverparens-mode)
  (add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode)
  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (use-package clojure-mode
    :ensure t
    :config
    (require 'flycheck-clj-kondo))

  (setq cider-jdk-src-paths '("/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home/lib/src.zip"))

  (setq cider-repl-pop-to-buffer-on-connect 'display-only)

  (load-file "/Users/thomascrowley/Code/clojure/boonmee/clients/emacs/boonmee.el")

  (add-hook 'clojure-mode-hook (lambda() (flycheck-mode 1) (boonmee-init)))

  (setq cider-repl-display-help-banner nil)

  (eval-after-load 'paredit
    '(progn
       (define-key paredit-mode-map (kbd "<C-M-right>") 'paredit-forward-slurp-sexp)
       (define-key paredit-mode-map (kbd "<C-M-left>")  'paredit-forward-barf-sexp)
       (define-key paredit-mode-map (kbd "<C-right>") nil)
       (define-key paredit-mode-map (kbd "<C-left>")  nil)))

  (defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

  )
