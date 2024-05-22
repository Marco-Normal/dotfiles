;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("verb" "\\begin{verbatim}\n$0\n\\end{verbatim}\n" "\\begin{verbatim} ... \\end{verbatim}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/verb.yasnippet" nil nil)
                       (";." "\\\\vdots " "vdots" 'auto
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/vdots" nil nil)
                       ("use" "\\usepackage[$2]{$1}$0" "\\usepackage" nil
                        ("misc")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/use.yasnippet" nil nil)
                       ("url" "\\url{${1:$$(yas/choose-value '(\"http\" \"ftp\"))}://${2:address}}$0" "\\url" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/url.yasnippet" nil nil)
                       ("tt" "{\\tt $1}$0" "{\\tt ...}" nil
                        ("font")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/tt.yasnippet" nil nil)
                       ("->" "\\to" "to"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/to" nil nil)
                       ("*" "\\\\cdot" "times"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/times" nil nil)
                       ("porta" "\\\\therefore " "therefore"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/therefore" nil nil)
                       ("tan" "\\\\tan" "tan"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/tan" nil nil)
                       ("table" "\\begin{table}[htbp]\n  \\centering\n  \\begin{tabular}{${3:format}}\n    $0\n  \\end{tabular}\n  \\caption{${1:caption}}\n  \\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n\\end{table}\n" "\\begin{table} ... \\end{table}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/table.yasnippet" nil nil)
                       ("sup" "\\\\sup_{$1 \\\\in $2} $0" "supremum"
                        (and
                         (texmathp)
                         auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/supremum" nil nil)
                       ("sum" "\\sum_{$1}^{$2}$0" "\\sum_{n}^{}"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sum.yasnippet" nil nil)
                       ("sub*" "\\subsection*{${1:name}}\n$0" "\\subsection*" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/substar.yasnippet" nil nil)
                       ("cc" "\\subset" "subset"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/subset" nil nil)
                       ("subfloat" "\\begin{figure}[ht]\n  \\centering\n  \\subfloat[${6:caption}]{\\includegraphics[$3]{figures/${1:path.png}}}${5:~}\n  \\subfloat[${7:caption}]{\\includegraphics[$4]{figures/${2:path.png}}}\n  \\caption{\\label{fig:${8:label}} $0}\n\\end{figure}\n" "subfloat" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/subfloat" nil nil)
                       ("subfig" "\\subfigure[${1:caption}]{\n  \\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n  $0\n}\n" "\\subfigure" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/subfig.yasnippet" nil nil)
                       ("sub" "\\subsection{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\subsection" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sub.yasnippet" nil nil)
                       ("st" "\\\\star" "star"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/star" nil nil)
                       ("stackrel" "\\\\stackrel{$1}{$0}" "stackrel"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/stackrel" nil nil)
                       ("ssub*" "\\subsubsection*{${1:name}}\n$0" "\\subsubsection*" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ssubstar.yasnippet" nil nil)
                       ("ssub" "\\subsubsection{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\subsubsection" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ssub.yasnippet" nil nil)
                       ("sin" "\\\\sin" "sin"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sin" nil nil)
                       ("~~" "\\\\sim" "similar"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/similar" nil nil)
                       ("set" "\\\\left\\\\{ $1 \\\\right\\\\}$0" "set"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/set" nil nil)
                       ("sec*" "\\section*{${1:name}}\n$0" "\\section*" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/secstar.yasnippet" nil nil)
                       ("sec" "\\section{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\section" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sec.yasnippet" nil nil)
                       ("sec" "\\\\sec" "sec"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sec" nil nil)
                       ("sc" "{\\scshape $1}$0" "{\\sc ...}" nil
                        ("font")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/sc.yasnippet" nil nil)
                       ("rvec" "\\\\begin{pmatrix} ${1:x}_{${2:1}} & ${3:\\\\dots} & $1_{${4:n}} \\\\end{pmatrix}" "row vector" 'auto
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/row vector" nil nil)
                       ("ref" "`(unless yas/modified-p (consult-reftex-insert-reference nil 'dont-insert))`" "\\ref" nil
                        ("references")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ref.yasnippet" nil nil)
                       ("qq" "\\\\quad " "quad"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/quad" nil nil)
                       ("prod" "\\prod_{$1}^{$2}$0\n" "\\prod_{n}^{}"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/prod.yasnippet" nil nil)
                       ("perp" "\\\\perp" "perp"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/perp" nil nil)
                       ("part" "\\\\frac{\\\\partial $1}{\\\\partial ${2:x}} $0" "partial derivative"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/partial derivative" nil nil)
                       ("par" "\\paragraph{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\paragraph" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/par.yasnippet" nil nil)
                       ("ox" "\\otimes" "otimes"
                        (and
                         (texmathp)
                         auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/otimes" nil nil)
                       ("o+" "\\oplus" "oplus"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/oplus" nil nil)
                       ("nEE" "\\\\nexists" "notexists"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/notexists" nil nil)
                       ("notin" "\\\\not\\\\in" "not in"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/not in" nil nil)
                       ("neq" "\\\\ne" "not equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/not equal" nil nil)
                       ("norm" "\\left\\|$1\\right\\|$0" "norm"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/norm" nil nil)
                       (";;" "\\\\\\\\\n`(save-excursion (previous-line)(make-string (current-indentation) ?\\s))`$0" "newline"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/newline" nil nil)
                       ("minipage" "\\begin{minipage}[${1:htbp}]{${2:1.0}${3:\\linewidth}}\n  $0\n\\end{minipage}" "\\begin{minipage}[position][width] ... \\end{minipage}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/minipage.yasnippet" nil nil)
                       ("matrix" "\\begin{${1:$$(yas/choose-value '(\"pmatrix\" \"bmatrix\" \"Bmatrix\" \"vmatrix\" \"Vmatrix\" \"smallmatrix\"))}} $0 \\end{$1}" "\\begin{matrix} ... \\end{}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/matrix.yasnippet" nil nil)
                       ("dm" "\\[\n$1\n\\]\n" "displaymath \\[ ... \\]" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/math.yasnippet" nil nil)
                       ("lrb" "\\\\left{$1 \\\\right} $0" "\\left{ \\right}"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/lrq" nil nil)
                       ("lrq" "\\\\left[ $1 \\\\right] $0" "\\left[ \\right]"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/lrd" nil nil)
                       ("lrb" "\\\\left{$1 \\\\right} $0" "\\left{ \\right}"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/lrb" nil nil)
                       ("log" "\\\\log" "log"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/log" nil nil)
                       ("ln" "\\\\ln" "ln"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ln" nil nil)
                       ("lst" "\\begin{lstlisting}[float,label=lst:${1:label},caption=nextHopInfo: ${2:caption}]\n$0\n\\end{lstlisting}" "listing" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/listing" nil nil)
                       ("limsup" "\\\\limsup_{${1:n} \\\\to ${2:\\\\infty}} $0" "limsup"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/limsup" nil nil)
                       ("lim" "\\\\lim_{${1:n} \\\\to ${2:\\\\infty}} $0\n" "limsup"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/limit" nil nil)
                       ("limit" "\\lim_{$1}$0\n" "\\lim_{n}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/lim.yasnippet" nil nil)
                       ("letter" "\\documentclass{letter}\n\\signature{${1:Foo Bar}}\n\\address{${2:Address line 1 \\\\\\\\ \nAddress line 2 \\\\\\\\\nAddress line 3}}\n\\begin{document}\n \n\\begin{letter}\n{${3:Recipient's address}}\n\n\\opening{Dear ${4:Sir}:}\n\n$0\n \n\\closing{Yours Sincerely,}\n \n\\end{letter}\n \n\\end{document}\n\n" "\\documentclass{letter} ..." nil
                        ("skeleton")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/letter.yasnippet" nil nil)
                       ("<<" "\\\\ll" "lesser lesser"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/lesser lesser" nil nil)
                       ("leq" "\\\\le$0" "less or equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/less or equal" nil nil)
                       ("<-->" "\\\\leftrightarrow\n" "leftrightarrow"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/leftrightarrow" nil nil)
                       ("lab" "\\label{${1:label$(unless yas/modified-p (reftex-label nil 'dont-insert))}}$0\n" "\\label" nil
                        ("references")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/label.yasnippet" nil nil)
                       ("bit" "\\begin{itemize}\n\\item $0\n\\end{itemize}\n" "\\begin{itemize} ... \\end{itemize}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/item.yasnippet" nil nil)
                       ("itd" "\\item[${1:label}] $0" "\\item[] (description)" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/itd.yasnippet" nil nil)
                       ("it" "\\item $0" "\\item" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/it.yasnippet" nil nil)
                       ("inv" "`(delete-backward-char 1)`^{-1}" "inverse"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/inverse" nil nil)
                       ("int" "\\\\${1:$$(yas/choose-value '(\"int\" \"oint\" \"iint\" \"iiint\" \"iiiint\" \"idotsint\"))}$0" "Indefinite integral (all)"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/int.yasnippet" nil nil)
                       ("inf" "\\\\inf_{$1 \\\\in $2} $0" "infimum"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/infimum" nil nil)
                       ("ig" "\\includegraphics${1:[$2]}{$0}" "includegraphics" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/includegraphics" nil nil)
                       ("inn" "\\\\in" "in"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/in" nil nil)
                       ("=>" "\\implies$0" "implies"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/implies" nil nil)
                       ("<=" "\\\\impliedby $0" "implied by"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/implied by" nil nil)
                       ("iff" "\\iff" "if and only if"
                        (and
                         (texmathp)
                         ''auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/if and only if" nil nil)
                       ("href" "\\href{${1:url}}{${2:text}}$0" "\\href{url}{text}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/href.yasnippet" nil nil)
                       ("hat" "`(condition-case nil (progn (backward-sexp) (kill-sexp) (delete-char 1)) (error (setq argument 'nil)))`\\\\hat{`(if argument (current-kill 0))`}$0" "hat"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        ((argument 't))
                        "/home/marco_normal/.config/doom/snippets/latex-mode/hat" nil nil)
                       ("geq" "\\\\ge" "greater or equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/greater or equal" nil nil)
                       (">>" "\\\\gg" "greater greater"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/greater greater" nil nil)
                       ("graphics" "\\includegraphics[width=${1:\\linewidth}]{${2:file}}" "\\includegraphics" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/graphics.yasnippet" nil nil)
                       ("newgls" "\\newglossaryentry{$1}{name={$1},\n  description={$2.}}\n" "\\newglossaryentry{...}{...}" nil
                        ("misc")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/gls.yasnippet" nil nil)
                       ("frame" "\\begin{frame}{${1:Frame Title$(capitalize yas-text)}}\n$0\n\\end{frame}\n" "\\begin{frame} ... \\end{frame}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/frame.yasnippet" nil nil)
                       ("frac" "\\frac{${1:numerator}}{${2:denominator}}$0" "\\frac{numerator}{denominator}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/frac.yasnippet" nil nil)
                       ("VV" "\\\\forall$0" "forall"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/forall" nil nil)
                       ("floor" "\\\\left\\\\lfloor $1 \\\\right\\\\rfloor $0" "floor function"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/floor function" nil nil)
                       ("fig" "\\begin{figure}[htbp]\n  \\centering\n  $0\n  \\caption{${1:caption}}\n  \\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n\\end{figure}\n" "\\begin{figure} ... \\end{figure}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/fig.yasnippet" nil nil)
                       ("exp" "\\\\exp" "exp"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/exp" nil nil)
                       ("eqv" "\\\\equiv$0" "equiv"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/equiv" nil nil)
                       ("bal" "\\begin{${1:$$(yas/choose-value '(\"align\" \"align*\" \"multline\" \"gather\" \"subequations\"))}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0\n\\end{$1}\n" "\\begin{align} ... \\end{align}" 'auto
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/eqs.yasnippet" nil nil)
                       ("beq" "\\begin{equation}\n\\label{${1:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0\n\\end{equation}\n" "\\begin{equation} ... \\end{equation}" 'auto
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/eq.yasnippet" nil nil)
                       ("ben" "\\begin{enumerate}\n\\item $0\n\\end{enumerate}\n" "\\begin{enumerate} ... \\end{enumerate}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/enum.yasnippet" nil nil)
                       ("em" "{\\em $1}$0" "{\\em ...}" nil
                        ("font")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/em.yasnippet" nil nil)
                       ("..." "\\\\dots$0" "dots"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/dots" nil nil)
                       ("doc" "\\documentclass[$2]{${1:$$(yas/choose-value '(\"article\" \"report\" \"book\" \"letter\"))}}\n\n\\begin{document}\n$0\n\\end{document}\n" "\\documentclass" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/doc.yasnippet" nil nil)
                       ("dx" "\\\\mathrm{d}${1:x} $0" "differencial"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/differencial" nil nil)
                       ("diff" "\\\\frac{\\\\mathrm{d}${1:y}}{\\\\mathrm{d}${2:x}} $0" "derivative" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/diffe" nil nil)
                       ("desc" "\\begin{description}\n\\item[${1:label}] $0\n\\end{description}\n" "\\begin{description} ... \\end{description}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/desc.yasnippet" nil nil)
                       ("pdiff" "\\\\frac{\\\\partial${1:y}}{\\\\partial${2:x}} $0" "derivative" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/derivative" nil nil)
                       ("dint" "\\\\int_{${1:-\\\\infty}}^{${2:\\\\infty}}$0" "definite integral"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/definite integral" nil nil)
                       (";/" "\\\\ddots" "ddots"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ddots" nil nil)
                       ("ddt" "\\\\frac{\\\\mathrm{d} $1}{\\\\mathrm{d} ${2:t}}$0" "d-by-dt"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/d-by-dt" nil nil)
                       ("csc" "\\\\csc" "csc"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/csc" nil nil)
                       ("cot" "\\\\cot" "cot"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/cot" nil nil)
                       ("cos" "\\\\cos" "cos"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/cos" nil nil)
                       ("coprod" "\\coprod_{$1}^{$2}$0\n" "\\coprod_{n}^{}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/coprod.yasnippet" nil nil)
                       ("conj" "`(delete-backward-char 1)`^{\\\\star}$0" "complex conjugate"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/complex conjugate" nil nil)
                       ("cols" "\\begin{columns}\n  \\begin{column}{.${1:5}\\textwidth}\n  $0\n  \\end{column}\n\n  \\begin{column}{.${2:5}\\textwidth}\n\n  \\end{column}\n\\end{columns}" "columns" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/columns" nil nil)
                       (",," "& $0" "column-separator"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/column-separator" nil nil)
                       ("cvec" "\\\\begin{pmatrix} ${1:x}_{${2:1}}\\\\\\\\ ${3:\\\\vdots}\\\\\\\\ $1_{${4:n}} \\\\end{pmatrix}" "column vector" 'auto
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/column vector" nil nil)
                       ("code" "\\begin{lstlisting}${1:[language=${2:Matlab}]}\n$0\n\\end{lstlisting}" "code" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/code" nil nil)
                       ("cite" "`(unless yas-modified-p (call-interactively 'citar-insert-citation))`" "\\cite" nil
                        ("references")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/cite.yasnippet" nil nil)
                       ("cha*" "\\chapter*{${1:name}}\n$0" "\\chapter*" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/chastar.yasnippet" nil nil)
                       ("cha" "\\chapter{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\chapter" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/cha.yasnippet" nil nil)
                       ("ceil" "\\\\left\\\\lceil $1 \\\\right\\\\rceil $0" "ceiling function"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/ceiling function" nil nil)
                       ("case" "\\\\begin{cases}\n  $1\n\\\\end{cases}$0" "cases"
                        (texmathp)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/cases" nil nil)
                       ("case" "\\begin{cases}\n$0 \\\\\\\\\n\\end{cases}\n" "\\begin{cases} ... \\end{cases}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/case.yasnippet" nil nil)
                       ("bf" "{\\bf $1}$0" "{\\bf ... }" nil
                        ("font")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/bold.yasnippet" nil nil)
                       ("mat3" "\\\\begin{bmatrix}\n${1:A} & ${2:$1} & ${3:$1} \\\\\\\\\n${4:$1} & ${5:$1} & ${6:$1} \\\\\\\\\n${7:$1} & ${8:$1} & ${9:$1} \n\\\\end{bmatrix}" "bmatrix (3 x 3)" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/bmatrix (3 x 3)" nil nil)
                       ("mat2" "\\\\begin{bmatrix}\n${1:A} & ${2:$1} \\\\\\\\\n${3:$1} & ${4:$1}\n \\\\end{bmatrix}" "bmatrix (2 x 2)" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/bmatrix (2 x 2)" nil nil)
                       ("block" "\\begin{${1:$$(yas/choose-value '(\"block\" \"exampleblock\" \"alertblock\"))}}{${2:Block Title}}\n\n\\end{$1}\n" "\\begin{*block} ... \\end{*block}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/block.yasnippet" nil nil)
                       ("binom" "\\binom{${1:n}}{${2:k}}" "\\binom{n}{k}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/binom.yasnippet" nil nil)
                       ("bigop" "\\\\big${1:$$(yas/choose-value '(\"oplus\" \"otimes\" \"odot\" \"cup\" \"cap\" \"uplus\" \"sqcup\" \"vee\" \"wedge\"))}_{$2}^{$3}$0\n" "\\bigop_{n}^{}" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/bigop.yasnippet" nil nil)
                       ("big" "\\\\${1:$$(yas/choose-value '(\"big\" \"Big\" \"bigg\" \"Bigg\"))}l( $0  \\\\$1r)" "\\bigl( ... \\bigr)" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/big.yasnippet" nil nil)
                       ("bib" "\\bibliographystyle{plain}\n\\bibliography{$1}$0" "\\bibliography" nil
                        ("misc")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/bib.yasnippet" nil nil)
                       ("begin" "\\begin{${1:$$(yas/choose-value (mapcar 'car (LaTeX-environment-list)))}}\n$0\n\\end{$1}" "\\begin{environment} ... \\end{environment}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/begin.yasnippet" nil nil)
                       ("beamer" "\\documentclass[xcolor=dvipsnames]{beamer}\n\n\\usepackage{graphicx,subfigure,url}\n\n% example themes\n\\usetheme{Frankfurt}\n\\usecolortheme{seahorse}\n\\usecolortheme{rose}\n\n% put page numbers\n% \\setbeamertemplate{footline}[frame number]{}\n% remove navigation symbols\n% \\setbeamertemplate{navigation symbols}{}\n\n\\title{${1:Presentation Title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n	\n\\frame[plain]{\\titlepage}\n	\n\\begin{frame}[plain]{Outline}\n	\\tableofcontents\n\\end{frame}\n	\n\\section{${3:Example Section}}\n\\begin{frame}{${4:Frame Title}}\n\n\\end{frame}\n\n\\end{document}\n" "\\documentclass{beamer} ..." nil
                        ("skeleton")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/beamer.yasnippet" nil nil)
                       ("basict" "\\documentclass[11pt]{article}\n\n\\usepackage{graphicx,amsmath,amssymb,subfigure,url,xspace}\n\n\\title{${1:title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n\\maketitle\n\n$0\n\n\\end{document}\n" "\\documentclass{article} ..." nil
                        ("skeleton")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/basict" nil nil)
                       ("bar" "`(condition-case nil (progn (backward-sexp) (kill-sexp) (delete-char 1)) (error (setq argument 'nil)))`\\\\bar{`(if argument (current-kill 0))`}$0" "bar"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        ((argument 't))
                        "/home/marco_normal/.config/doom/snippets/latex-mode/bar" nil nil)
                       ("article" "\\documentclass[11pt]{article}\n\n\\usepackage{graphicx,amsmath,amssymb,subfigure,url,xspace}\n\\newcommand{\\eg}{e.g.,\\xspace}\n\\newcommand{\\bigeg}{E.g.,\\xspace}\n\\newcommand{\\etal}{\\textit{et~al.\\xspace}}\n\\newcommand{\\etc}{etc.\\@\\xspace}\n\\newcommand{\\ie}{i.e.,\\xspace}\n\\newcommand{\\bigie}{I.e.,\\xspace}\n\n\\title{${1:title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n\\maketitle\n\n\n\\bibliographystyle{${3:plain}}\n\\bibliography{${4:literature.bib}}\n\n\\end{document}\n" "\\documentclass{article} ..." nil
                        ("skeleton")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/article.yasnippet" nil nil)
                       ("arr" "\\begin{array}{$1}\n  $0\n\\end{array}\n" "\\begin{array} ... \\end{array}" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/array.yasnippet" nil nil)
                       ("arctan" "\\\\arctan" "arctan"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arctan" nil nil)
                       ("arcsin" "\\\\arcsin" "arcsin"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arcsin" nil nil)
                       ("arcsec" "\\\\arcsec" "arcsec"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arcsec" nil nil)
                       ("arccsc" "\\\\arccsc" "arccsc"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arccsc" nil nil)
                       ("arccot" "\\\\arccot" "arccot"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arccot" nil nil)
                       ("arccos" "\\\\arccos" "arccos"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/arccos" nil nil)
                       ("bsal" "\\begin{align*}\n  $0\n\\end{align*}" "\\begin{align*} ... \\end{align*}"
                        (and
                         (texmathp)
                         'auto)
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/alignstar.yasnippet" nil nil)
                       ("bal" "\\begin{align}\n  $0\n\\end{align}" "\\begin{align} ... \\end{align}"
                        (and
                         (texmathp)
                         'auto)
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/align.yasnippet" nil nil)
                       ("adj" "`(delete-backward-char 1)`^{\\\\dagger}$0" "adjoint"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/adjoint" nil nil)
                       ("abstract" "\\begin{abstract}\n$0\n\\end{abstract}" "\\abstract" nil
                        ("sections")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/abstract.yasnippet" nil nil)
                       ("cb" "`(delete-backward-char 1)`^3$0" "^3"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/^3" nil nil)
                       ("sr" "`(delete-backward-char 1)`^2$0" "^2"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/^2" nil nil)
                       ("td" "`(backward-delete-char 1)`^{$1}" "To the power"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/To the power" nil nil)
                       ("tikzplot" "\\begin{figure}[$1]\n	\\centering\n	\\begin{tikzpicture}\n		\\begin{axis}[\n			xmin= ${2:-10}, xmax= ${3:10},\n			ymin= ${4:-10}, ymax = ${5:10},\n			axis lines = middle,\n		]\n			\\addplot[domain=$2:$3, samples=${6:100}]{$7};\n		\\end{axis}\n	\\end{tikzpicture}\n	\\caption{$8}\n	\\label{${9:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n\\end{figure}\n" "Tikz Plot" nil
                        ("environments")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Tikz Plot" nil nil)
                       ("fm" "`(if (eq major-mode 'org-mode) \"\\\\( \" \"$\")`$0`(if (eq major-mode 'org-mode) \" \\\\)\" \"$\")`" "Inline Math"
                        (and
                         (not
                          (texmathp))
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Inline Math" nil nil)
                       ("//" "\\frac{$1}{$2}$0" "fraction"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/Fraction auto" nil nil)
                       ("EE" "\\\\exists" "Exists"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Exists" nil nil)
                       ("dm" "\\[\n`(save-excursion (previous-line)(make-string (current-indentation) ?\\s))`$0\\]\n" "Display Math"
                        (and
                         (not
                          (texmathp))
                         'auto)
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Display Math" nil nil)
                       ("diag3" "\\\\begin{bmatrix}\n${1:\\\\ddots}  &  & \\\\\\\\\n & ${2:\\\\ddots}  & \\\\\\\\\n &  & ${3:\\\\ddots}\n \\\\end{bmatrix}" "Diagonal bmatrix" nil
                        ("math")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Diagonal bmatrix" nil nil)
                       ("template" "\\input{`my-preamble-file`}\n% \\usepackage{hyperref}\n% \\hypersetup{\n%     colorlinks,\n%     citecolor=cyan,\n%     filecolor=black,\n%     linkcolor=blue,\n%     urlcolor=black}\n\n\\author{`user-full-name`\\vspace{-2ex}}\n\\title{\\vspace{-3.0cm}${1:Title$(capitalize yas-text)}\\vspace{-2ex}}\n${2:\\date{${3:\\today}}}\n\n\\begin{document}\n\n\\begingroup\n\\let\\center\\flushleft\n\\let\\endcenter\\endflushleft\n\\maketitle\n\\endgroup\n\n% \\tableofcontents\n\n$0\n\\end{document}" "Basic template" nil
                        ("skeleton")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/Basic template" nil nil)
                       ("vec2" "\\\\begin{bmatrix} ${1:x}_{${2:1}} \\\\\\\\ ${3:$1}_{${4:2}} \\\\end{bmatrix}" "2-vector" nil nil nil "/home/marco_normal/.config/doom/snippets/latex-mode/2-vector" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '((";X" "\\Xi$0" "Xi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-xi" nil nil)
                       (";U" "\\Upsilon$0" "Upsilon"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-upsilon" nil nil)
                       (";O" "\\Theta$0" "Theta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-theta" nil nil)
                       (";S" "\\Sigma$0" "Sigma"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-sigma" nil nil)
                       (";Psi" "\\Psi$0" "Psi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-psi" nil nil)
                       (";P" "\\Phi$0" "Phi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-phi" nil nil)
                       (";W" "\\Omega$0" "Omega"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-omega" nil nil)
                       (";L" "\\Lambda$0" "Lambda"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-lambda" nil nil)
                       (";G" "\\Gamma$0" "Gamma"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-gamma" nil nil)
                       (";D" "\\Delta$0" "Delta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-uc-delta" nil nil)
                       (";z" "\\zeta$0" "zeta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-zeta" nil nil)
                       (";x" "\\xi$0" "xi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-xi" nil nil)
                       (";oo" "\\vartheta$0" "vartheta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-vartheta" nil nil)
                       (";ss" "\\varsigma$0" "varsigma"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varsigma" nil nil)
                       (";rr" "\\varrho$0" "varrho"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varrho" nil nil)
                       (";pp" "\\varpi$0" "varpi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varpi" nil nil)
                       (";ff" "\\varphi$0" "varphi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varphi" nil nil)
                       (";kk" "\\varkappa$0" "varkappa"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varkappa" nil nil)
                       (";veps" "\\varepsilon$0" "varepsilon"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-varepsilon" nil nil)
                       (";u" "\\upsilon$0" "upsilon"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-upsilon" nil nil)
                       (";o" "\\theta$0" "theta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-theta" nil nil)
                       (";t" "\\tau$0" "tau"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-tau" nil nil)
                       (";s" "\\sigma$0" "sigma"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-sigma" nil nil)
                       (";r" "\\rho$0" "rho"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-rho" nil nil)
                       (";psi" "\\psi$0" "psi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-psi" nil nil)
                       (";pi" "\\pi$0" "pi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-pi" nil nil)
                       (";p" "\\phi$0" "phi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-phi" nil nil)
                       (";w" "\\omega$0" "omega"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-omega" nil nil)
                       (";n" "\\nu$0" "nu"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-nu" nil nil)
                       (";m" "\\mu$0" "mu"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-mu" nil nil)
                       (";l" "\\lambda$0" "lambda"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-lambda" nil nil)
                       (";k" "\\kappa$0" "kappa"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-kappa" nil nil)
                       (";i" "\\iota$0" "iota"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-iota" nil nil)
                       (";g" "\\gamma$0" "gamma"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-gamma" nil nil)
                       (";e" "\\eta$0" "eta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-eta" nil nil)
                       (";eps" "\\epsilon$0" "epsilon"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-epsilon" nil nil)
                       (";d" "\\delta$0" "delta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-delta" nil nil)
                       (";x" "\\chi$0" "chi"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-chi" nil nil)
                       (";b" "\\beta$0" "beta"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-beta" nil nil)
                       (";a" "\\alpha$0" "alpha"
                        (and
                         (yas-texmathp)
                         'auto)
                        ("Math Greek Letters")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-greek/mm-greek-lc-alpha" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("wp" "\\wp$0" "wp"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-wp" nil nil)
                       ("vdots" "\\vdots$0" "vdots"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-vdots" nil nil)
                       ("o/" "\\varnothing$0" "varnothing"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-varnothing" nil nil)
                       ("top" "\\top$0" "top"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-top" nil nil)
                       ("Re" "\\Re$0" "Re"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-re" nil nil)
                       ("+-" "\\pm $0" "pm"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-pm" nil nil)
                       ("part" "\\partial $0" "partial"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-partial" nil nil)
                       ("!EE" "\\nexists $0" "nexists"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-nexists" nil nil)
                       ("neg" "\\neg $0" "neg"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-neg" nil nil)
                       ("del" "\\nabla $0" "nabla alt"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-nabla-alt" nil nil)
                       ("nab" "\\nabla $0" "nabla"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-nabla" nil nil)
                       ("-+" "\\mp $0" "mp"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-mp" nil nil)
                       ("mho" "\\mho$0" "mho"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-mho" nil nil)
                       ("lnot" "\\lnot $0" "lnot"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-lnot" nil nil)
                       ("jj" "\\jmath$0" "jmath"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-jmath" nil nil)
                       ("oo" "\\infty$0" "infty"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-infty" nil nil)
                       ("imp" "\\implies $0" "implies alt"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-implies-alt" nil nil)
                       ("=>" "\\implies $0" "implies"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-implies" nil nil)
                       ("ii" "\\imath$0" "imath"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-imath" nil nil)
                       ("Im" "\\Im$0" "Im"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-im" nil nil)
                       ("iff" "\\iff $0" "iff"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-iff-alt" nil nil)
                       ("<=>" "\\iff $0" "iff"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-iff" nil nil)
                       ("hbar" "\\hbar$0" "hbar"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-hbar" nil nil)
                       ("AA" "\\forall $0" "forall"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-forall" nil nil)
                       ("EE" "\\exists $0" "exists"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-exists" nil nil)
                       ("eth" "\\eth$0" "eth"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-eth" nil nil)
                       ("0/" "\\emptyset$0" "emptyset"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-emptyset" nil nil)
                       ("ell" "\\ell$0" "ell"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-ell" nil nil)
                       ("..." "\\dots$0" "dots"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-dots" nil nil)
                       ("inc" "\\Delta $0" "Delta alt"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-delta-alt" nil nil)
                       ("ddots" "\\ddots$0" "ddots"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-ddots" nil nil)
                       ("cdots" "\\cdots $0" "cdots"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-cdots" nil nil)
                       ("bot" "\\bot$0" "bot"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-bot" nil nil)
                       ("&&" "\\And $0" "And"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-and" nil nil)
                       ("al" "\\aleph$0" "aleph"
                        (yas-texmathp)
                        ("Math Symbols")
                        nil "/home/marco_normal/.config/doom/snippets/latex-mode/mm-symbs/mm-symb-aleph" nil nil)))


;;; Do not edit! File generated at Mon Oct 16 12:54:04 2023
