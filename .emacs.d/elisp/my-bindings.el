;;; my-bindings.el

(global-set-key (kbd "C-M-h") 'backward-kill-word)

(global-set-key (kbd "C-x \\") 'align-regexp)

(global-set-key (kbd "\M- ") 'hippie-expand)

(global-set-key (kbd "M-/") 'undo-tree-redo)

(global-set-key [f1] 'menu-bar-mode)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window 2))) ;; forward two

(global-set-key (kbd "C-x ^") 'join-line)

(global-set-key (kbd "C-x C-m") 'execute-extended-command)

(global-set-key (kbd "C-h a") 'apropos)

(global-set-key (kbd "M-<insert>") (lambda () (interactive) (load-file (concat my-emacs-d-dir "init.el"))))

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp
                 isearch-string
               (regexp-quote isearch-string))))))

(define-key global-map "\C-ca" 'org-agenda)

(define-key global-map "\C-cl" 'org-store-link)

(define-key global-map "\C-x\C-r" 'rgrep)

;;(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)

;;(define-key global-map (kbd "C-c k") 'iedit-mode)
