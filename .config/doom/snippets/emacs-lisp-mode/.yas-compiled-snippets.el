;;; Compiled snippets and support files for `emacs-lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'emacs-lisp-mode
                     '(("pp" "(pp $3 $1)$0" "pp" nil nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/pp" nil nil)
                       ("pM" "(point-max)" "point-max" nil nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/point-max" nil nil)
                       ("mk" "($0)" "paren-insert" 'auto nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/paren-insert" nil nil)
                       ("msg" "(message ${1:(format \"$2\")})$0" "message" nil nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/message" nil nil)
                       ("gbc" "(get-buffer-create $0)" "get-buffer-create" nil nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/get-buffer-create" nil nil)
                       ("gb" "(get-buffer \"${1:`(read-buffer \"Buffer:\")`}\")$0" "get-buffer" nil nil nil "/home/marco_normal/.config/doom/snippets/emacs-lisp-mode/get-buffer" nil nil)))


;;; Do not edit! File generated at Mon Oct 16 12:54:04 2023
