;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")
(setq user-full-name "Marco Túlio Mello Silva"
      user-mail-address "marcotulio2709@usp.br")

(setq org-id-link-to-org-id 'create-if-interactive)
(setq shell-file-name (executable-find "bash"))
(setq warning-minimum-level :emergency)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
(setq doom-modeline-enable-word-count nil
      doom-font (font-spec :family "CaskaydiaCove NFM" :size 18)
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove NF" :size 18))
(setq toggle-truncate-lines t)
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


(require 'doom-modeline)
(doom-modeline-mode 1)
(add-hook 'after-init-hook #'doom-modeline-mode)
;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;yas-snips;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-org-latex-yas ()
  "Activate org and LaTeX yas expansion in org-mode buffers."
  (yas-minor-mode)
  (yas-activate-extra-mode 'latex-mode))
(add-hook 'org-mode-hook #'my-org-latex-yas)
;; Function that tries to auto-expand YaSnippets
(after! yasnippet
  (defun my-yas-try-expanding-auto-snippets ()
    (when yas-minor-mode
      (let ((yas-buffer-local-condition ''(require-snippet-condition . auto)))
        )))
  (add-hook 'post-command-hook #'my-yas-try-expanding-auto-snippets))

(defun yas-texmathp () (require 'texmathp) '((texmathp my-org-latex-yas)))
;;:(map!
(defun my/org-tab-conditional ()
  (interactive)
  (if (yas-active-snippets)
      (yas-next-field-or-maybe-expand)
    (org-cycle)))

(map! :after evil-org
      :map evil-org-mode-map
      :i "TAB" #'my/org-tab-conditional)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;Copilot;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; accept completion from copilot and fallback to company
(use-package! copilot
  :hook ((prog-mode . copilot-mode)
         (org-mode . copilot-mode))
  :bind (:map copilot-completion-map
              ("C-l" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;Keybings;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(map! "C-RET" #'org-insert-heading
      "C-a RET" #'org-insert-heading-after-current
      "C-w C-h" #'windmove-left
      "C-w C-l" #'windmove-right
      "C-w C-k" #'windmove-up
      "C-w C-j" #'windmove-down
      "C-k C-c" #'comment-line
      "C-S C-c" #'shell)
;;(global-set-key (kbd "C-i i") 'flyspell-correct-word)
(setq ns-function-modifier 'control)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;Org-Babel;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ledger R Python Rust C . t)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;Org-Bullets;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;ORG-ROAM;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package! org-roam
  ;; :init
  ;;(setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/RoamNotes")
  (setq org-roam-dailies-directory "Daily/")
  (org-roam-completion-everywhere t)
  ;; :ensure t
  (org-roam-capture-templates
   '(("d" "default" plain
      "%?"
      :target (file+head "Misc/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date:%U\n")
      :unnarrowed t)
     ("p" "programming language" plain (file "~/RoamNotes/Programação/Template/code.org")
      :target (file+head "Programação/%<%Y%m%d%H%M%S>-${slug}.org"  "#+title: ${title}\n#+date: %U\n#+filetags: Programação\n")
      :unnarrowed t)
     ("c" "class" plain (file "~/RoamNotes/Aulas/Template/class-template.org")
      :target (file+head "Aulas/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n#+filetags: Aulas\n")
      :unnarrowed t)
     ("a" "article" plain (file "~/RoamNotes/IC/Template/article.org")
      :target (file+head "IC/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n#+filetags: IC\n"))
     ("i" "Iniciação Tópicos" plain (file "~/RoamNotes/IC/Template/topic.org")
      :target (file+head "IC/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n#+filetags: IC\n"))
     ))
  (org-roam-dailies-capture-template
   '(("d" "default" entry
      "* %?"
      :target (file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>\n#+date: %<%Y-%m-%d>\n #+filetags: Daily\n")
      :unnarrowed t)))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n g" . org-roam-graph)
         ("C-c n d Y" . org-roam-dailies-capture-yesterday)
         ("C-c n d T" . org-roam-dailies-capture-tomorrow)
         ("C-c n d t" . org-roam-dailies-capture-today)
         ("C-c n d d" . org-roam-dailies-capture-date)
         :map org-mode-map
         ("C-c n c" . completion-at-point))
  :config
  (require 'org-roam-dailies)
  (org-roam-db-autosync-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;Ispell;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(setq ispell-program-name "/usr/bin/aspell")
;; Quickly switch dictionaries
;; Adapted from DiogoRamos' snippet on https://www.emacswiki.org/emacs/FlySpell#h5o-5

(let ((langs '("brazilian" "english")))
  (defvar lang-ring (make-ring (length langs))
    "List of Ispell dictionaries you can switch to using ‘cycle-ispell-languages’.")
  (dolist (elem langs) (ring-insert lang-ring elem)))

(defun cycle-ispell-languages ()
  "Switch to the next Ispell dictionary in ‘lang-ring’."
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
(global-set-key [f10] #'cycle-ispell-languages) ; replaces ‘menu-bar-options-menu’
;;(add-hook 'org-mode-hook #'flyspell-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;TOC;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (require 'toc-org nil t)
    (progn
      (add-hook 'org-mode-hook 'toc-org-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;Ligatures;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; This assumes you've installed the package via MELPA.
(use-package ligature
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures '(prog-mode org-mode) '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                                  ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                                  "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                                  "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                                  "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                                  "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                                  "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                                  "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                                  ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                                  "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                                  "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                                  "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                                  "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;TimeStamp;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package! org-roam-timestamps
  :after org-roam
  :config (org-roam-timestamps-mode))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;Rust;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'rust-mode)
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))
(add-hook 'rust-mode-hook #'lsp)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;Latex-Preview;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq org-preview-latex-default-process 'dvipng)
(setq org-latex-src-block-backend 'minted)
(require 'ox-latex)
(setq org-latex-compiler "xelatex")
(add-to-list 'org-latex-packages-alist '("" "fontspec" t ("xelatex")))
(setq org-latex-packages-alist '(("outputdir=./build" "minted" nil)))
(setq org-preview-latex-process-alist
      '(
        (dvipng
         :programs ("latex" "dvipng")
         :description "dvi > png"
         :message "you need to install the programs: latex and dvipng."
         :image-input-type "dvi"
         :image-output-type "png"
         :image-size-adjust (1.0 . 1.0)
         :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
         :image-converter ("dvipng -D %D -T tight -o %O %f")
         )
        )
      )
(setq org-latex-pdf-process '("mkdir -p build"
                              "latexmk -f -pdf -lualatex -shell-escape -interaction=nonstopmode -output-directory=%o/build %f"
                              "mv %obuild/%b.pdf %O"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Close window after compilation;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun exit-after-compile-hook (cur-buffer msg)
  ;; nil: Don't kill the window.
  ;; 0: Affect visible and iconified frames.
  (quit-window nil (get-buffer-window cur-buffer 0)))

(add-hook 'compilation-finish-functions #'exit-after-compile-hook)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;Corfu;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq tab-always-indent 'complete)


