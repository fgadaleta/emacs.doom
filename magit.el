;;; ~/.doom.d/+magit.el -*- lexical-binding: t; -*-

(after! magit
  (magit-wip-after-save-mode t)
  (magit-wip-after-apply-mode t)

  (setq magit-save-repository-buffers 'dontask
        magit-repository-directories '(("/home/frag/Documents/projects" . 3)
                                       ("/home/frag/Document/" . 0))
        magit-popup-display-buffer-action nil ;; Not sure why this is here, wonder what it does
        magit-display-file-buffer-function #'switch-to-buffer-other-window
        magithub-clone-default-directory "~/projects" ;; I want my stuff to clone to ~/projects
        magithub-preferred-remote-method 'ssh_url)) ;; HTTPS cloning is awful, i authenticate with ssh keys.
