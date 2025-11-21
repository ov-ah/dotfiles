(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(package-selected-packages '(gruber-darker-theme magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruber-darker t)

(use-package completion-preview
  :ensure t
  :config
  (global-completion-preview-mode)
  (push 'org-self-inser-command completion-preview-commands))

(fido-vertical-mode)
(fido-mode)
(define-key icomplete-minibuffer-map (kbd "<tab>") 'icomplete-force-complete) ;; hacky force tab completion

(setq inhibit-startup-screen t)
(setq initial-scratch-message "
⠀⠀⠀⠸⣿⣿⣷⣶⣤⣤⣤⣤⣤⣴⣾⡷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣧⣶⣶⣦⣤⣀⠤⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⡶⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣄⠀⠀⠀⠀⠀
⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀
⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠦⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀
⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢹⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀
⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡀⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⢿⣿⣿⣿⣿⡿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀
⠀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠙⣷⢹⠞⣿⣿⣿⣿⣿⣿⡀⠀⠀⢸⣿⣿⣿⣿⣿⡆⣿⢙⣿⡿⣿⣿⣿⣿⣼⣿⣿⡿⣿⣿⣿⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⡏⢿⠀⣽⠉⠀⡿⣿⣿⣿⣿⣿⣧⠀⠀⠘⣿⣿⣿⣿⣀⡏⠃⠀⣿⡁⣿⡟⢿⣿⣿⣿⣿⣷⣿⣿⠉⠀
⠀⠀⠾⢹⣿⣿⣿⣿⣿⣿⣧⣤⡶⠃⠀⠀⠀⢈⣿⣿⡿⠈⠛⠀⠀⠀⠿⠹⣿⣿⣿⡀⠀⠀⠸⡿⣿⣥⣾⣿⣿⣿⣿⣯⣿⢿⠁⠀
⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣯⣀⣀⣀⣠⣤⣶⣿⡿⢻⡇⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣶⣤⣄⣈⣼⣿⣾⣿⣿⣿⣿⣿⣿⠘⠁⠀
⠀⠀⠀⠰⠃⠙⡿⣿⣿⡿⡿⣯⣭⣿⠿⣷⣏⣿⡇⠀⠁⠀⠀⠀⠀⠀⠀⠀⠈⣿⢹⡿⢿⣿⣿⣿⠿⣿⣿⣿⣿⡟⣿⠿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠐⠃⢹⣿⣾⣞⡴⣿⡗⣾⣿⣿⠘⠁⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠃⢸⠇⣸⣿⣟⣻⡿⠿⣿⣻⢼⣿⠘⠀⠈⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣷⣿⣿⡿⣻⣿⣿⠄⠀⠀⢀⣠⣼⣿⣿⣶⣿⡄⠀⠀⠀⠀⣼⢸⣿⣷⣴⣷⣿⠁⠀⢿⡃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡗⣻⣿⣿⣿⣷⣿⣿⣿⣶⠏⢿⣿⡿⢿⠇⠀⠀⠀⠀⣿⣀⣿⡿⣿⣿⠿⡆⠀⠸⣇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⣿⣟⣻⣿⣿⣗⣿⣿⣿⣿⣿⣿⡄⣸⣿⡷⠃⠀⠀⠀⠀⠀⣿⣿⣿⣷⣴⣾⣾⣧⣤⣾⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣭⣿⣭⣭⣯⣿⣯⠙⠛⠛⠛⠛⠙⡾⠁⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⡛⣛⠟⢻⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⣿⣿⣷⣿⡏⢻⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⣲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣧⣄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠟⡩⠉⠝⣿⣷⣽⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣟⣿⣿⢿⠉⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣕⡽⢿⣿⢿⣿⠿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠉⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠙⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⢋⠄⠉⣡⠸⣿⣿⡾⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⢟⣐⡷⡯⣥⣤⢿⣟⡞⣻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀
    ⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠟⠋⠹⠿⠿⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠈⠙⠛⠛⠛⠋⠉⠀⠀⠀⠀⠀

welcome back to emacs <3
")

(defun my/set-font-size ()
  "Set Emacs font size based on configuration file."
  (let ((config-file (expand-file-name "~/.font_config")))
    (when (file-exists-p config-file)
      (let* ((font-size (with-temp-buffer
                          (insert-file-contents config-file)
                          (string-to-number (string-trim (buffer-string)))))
             (font-spec (format "Terminus-%d" font-size)))
        (set-face-attribute 'default nil :font font-spec :height (* font-size 10))
        (set-frame-font font-spec t t)))))
(add-hook 'after-init-hook #'my/set-font-size)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
