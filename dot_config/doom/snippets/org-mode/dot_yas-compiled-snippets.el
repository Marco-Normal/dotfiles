;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("<video" "#+begin_export html\n<video preload=\"metadata\" style=\"center\" width=\"${2:700}\" ${3:autoplay }${4:controls}${5: loop}>\n <source src=`(let* ((s (read-file-name \"Video file: \"))\n                     (s-short (substring s (string-match \"/img\" s))))\n                (concat \"\\\"\"\n                        s-short\n                        \"\\\" type=\\\"\"\n                        (substring (shell-command-to-string\n                          (concat \"mimetype -b 2>/dev/null \"\n                                  (shell-quote-argument s))) 0 -1)\n                        \"\\\">\\n<a href=\"\n                        s-short\n                        \"\\\">\"\n                        ))`${6:[VIDEO]}</a></video>\n#+end_export\n$0" "video template" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/video template" nil nil)
                       ("<jp" "#+BEGIN_SRC jupyter-python\n$0\n#+END_SRC" "src-jupyter-python" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/src-jupyter-python" nil nil)
                       ("<s" "#+begin_src ${1:$$(yas-auto-next (yas-completing-read \"Language: \" (mapcar 'car org-babel-load-languages))) }\n$0\n#+end_src" "source block" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/source block" nil nil)
                       ("<spa" "#+REVEAL_HTML: <span class=\"${1:fragment}\" style=\"${2:font-size:50%}\">\n$0\n#+REVEAL_HTML: </span>" "reveal-html-span" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/reveal-html-span" nil nil)
                       ("<div" "#+REVEAL_HTML: <div class=\"${1:row}\" style=\"$2\">\n$0\n#+REVEAL_HTML: </div>" "reveal-html-div" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/reveal-html-div" nil nil)
                       ("<rco" "#+REVEAL_HTML: <div class=\"column\" style=\"width:${1:50}%;\">\n$0\n#+REVEAL_HTML: </div>\n#+REVEAL_HTML: <div class=\"column\" style=\"width:${1:$(- 100 (string-to-number yas-text))}%;\">\n\n#+REVEAL_HTML: </div>" "reveal-html-columns" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/reveal-html-columns" nil nil)
                       ("3=" "#+$0" "hash-plus" 'auto nil nil "/home/marco_normal/.config/doom/snippets/org-mode/hash-plus" nil nil)
                       ("<header" "#+title: ${1:$$(capitalize yas-text)}\n#+author: ${2:`user-full-name`}\n#+date: ${3:`(format-time-string \"%Y:%m:%d\")`}\n#+options: h:${4:3} num:${5:t||nil} toc:${6:t||nil}\n${7:#+property: header-args:matlab :session *MATLAB* :results output :exports both :eval never-export :noweb yes}\n${8:#+property: header-args:julia :session *Julia* :async yes :exports results}\n# #+setupfile: https://fniessen.github.io/org-html-themes/setup/theme-readtheorg.setup\n# #+html_HEAD: <link rel=\"stylesheet\" type=\"text/css\" href=\"https://gongzhitaao.org/orgcss/org.css\"/>\n#+latex_CLASS: ${9:article}\n#+latex_CLASS_OPTIONS: ${10:[10pt]}\n#+latex_HEADER: ${11:\\input{${12:`(if (boundp 'my-preamble-file) my-preamble-file \"\")`}}}\n${13:#+bibliography: ${14:`(car reftex-default-bibliography)`}}\n#+exclude_TAGS: noexport ignore\n#+startup: ${15:latexpreview} ${16:hideblocks}\n\n$0\n" "Basic Org Header" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/basic org header" nil nil)
                       ("<anki" "`(make-string (1+ (or (org-current-level) 0)) 42)` $1 :@anki:\n:PROPERTIES:\n:ANKI_NOTE_TYPE: `(completing-read \"Card type: \" '(\"Basic\" \"Cloze\") nil t)`\n:ANKI_DECK: Default\n:ANKI_TAGS: `(if-let ((all-tags (or (and (require 'anki-editor nil t)\n                                         (with-demoted-errors \"Using local tags: %S\"\n                                          (anki-editor-all-tags)))\n                                     (and (boundp 'my-anki-tags) my-anki-tags))))\n                    (mapconcat #'identity (completing-read-multiple \"Tags: \" all-tags) \" \") \"\")`\n:ID: `(org-id-get-create)`\n:END:\n`(make-string (+ 2 (or (org-current-level) 0)) 42)` Front\n${1:Question}\n`(make-string (+ 2 (or (org-current-level) 0)) 42)` Back\n$0" "anki" nil nil nil "/home/marco_normal/.config/doom/snippets/org-mode/anki" nil nil)))


;;; Do not edit! File generated at Mon Oct 16 12:54:04 2023
