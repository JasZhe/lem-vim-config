(in-package :lem-user)
(lem-lisp-mode/internal::lisp-set-package "LEM")

(lem-vi-mode:vi-mode)
(setf (lem-vi-mode:option-value "autochdir") t)

(define-command call-find-defn () ()
    (call-command 'find-definitions))

(lem-core:define-key lem-vi-mode:*normal-keymap* "g d" 'lem/language-mode:find-definitions)

(define-key *global-keymap* "C-h k" 'describe-key)
(define-key *global-keymap* "C-h m" 'describe-mode)

;; Define a leader key
(lem-vi-mode/core:define-keymap *leader-keymap* :parent lem-vi-mode:*motion-keymap*)
(define-key lem-vi-mode:*normal-keymap* "Space" *leader-keymap*)

(define-key *leader-keymap* "," 'select-buffer)
(define-key *leader-keymap* "f f" 'find-file)
(define-key *leader-keymap* "F" 'find-file-recursively)

(define-key *leader-keymap* "h k" 'describe-key)
(define-key *leader-keymap* "h m" 'describe-mode)

(lem-vi-mode/core:define-keymap *workspace-keymap* :parent lem-vi-mode:*motion-keymap*)


(lem-vi-mode/core:define-keymap *window-keymap*)
(define-key lem-vi-mode:*normal-keymap* "C-w" *window-keymap*)

(define-key *window-keymap* "C-l" 'window-move-right)
(define-key *window-keymap* "C-h" 'window-move-left)
(define-key *window-keymap* "C-j" 'window-move-down)
(define-key *window-keymap* "C-k" 'window-move-up)

(define-key *window-keymap* "v" 'split-active-window-horizontally)
(define-key *window-keymap* "s" 'split-active-window-vertically)

