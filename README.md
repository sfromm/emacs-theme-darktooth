![](palette-images/header.png)

a theme for Emacs

This is a fork of the official [darktooth](https://github.com/sfromm/emacs-theme-darktooth) theme.


## Installation

As this is a fork of the official theme, it is not presently available to install via [MELPA](http://melpa.org).

You can use [Quelpa](https://github.com/quelpa/quelpa) to install this theme or clone the repository and install it manually.

``` emacs-lisp
(use-package darktooth
  :ensure t
  :quelpa
  ((darktooth-theme :fetcher github
                    :repo "sfromm/emacs-theme-darktooth")
   :upgrade t))
```

## Modes supported

- ac-dabbrev
- ag (The Silver Searcher)
- anzu
- auctex
- avy
- col-highlight
- column-enforce-mode
- column-marker
- company
- diff
- diff-hl
- diff-indicator
- dired+
- el-search
- eldoc
- elfeed
- elixir-mode
- elscreen
- embrace
- erc
- flycheck
- flymake
- git-gutter
- git-gutter+
- git-gutter-fr
- git-gutter-fr+
- haskell
- helm
- helm-swoop
- hi-lock
- highlight-indentation-mode
- highlight-numbers
- highlight-symbol
- hydra
- ido
- isearch
- ivy
- linum-relative
- magit
- man
- message
- notmuch
- org-mode
- popup
- powerline
- rainbow-delimiters
- rainbow-identifiers
- ripgrep
- sh mode
- show-paren
- smart-mode-line
- smartparens
- smerge
- swoop
- term / ansi-colors
- tldr
- vline
- web
- which-func
- which-key
- whitespace-mode
- woman

# Palette

![](palette-images/darkness.png)

![](palette-images/medium.png)

![](palette-images/lightness.png)

![](palette-images/bright.png)

![](palette-images/neutral.png)

![](palette-images/faded.png)

![](palette-images/muted.png)

![](palette-images/dark.png)

![](palette-images/mid.png)

![](palette-images/accents.png)

![](palette-images/delimiters.png)

![](palette-images/identifiers-1.png)

![](palette-images/identifiers-2.png)

![](palette-images/identifiers-3.png)

# Miscellany

![Multi window layout with various modes](darktooth-multi-window.png)

### The Fabled Darktooth Keyboard...

![How can I buy this?!??! Shut up and take my money!](darktooth-keyboard.jpg)

### Darktooth Mode line

There's an optional modeline theme available, run `(darktooth-modeline)`:

**Darktooth modeline - screenshot**

![](darktooth-modeline.png)

### Screenshots

##### Popup Menu

![](darktooth-popup-menu.png)

##### Popup Tip

![](darktooth-popup-tip.png)

##### Emacs Lisp

![](darktooth-emacslisp.png)

##### CoffeeScript

![](darktooth-coffee.png)

##### Java

![](darktooth-java.png)

##### XML

![](darktooth-xml.png)

##### Dired

![](darktooth-dired.png)

##### Terminal (xterm256 / iTerm)

![](darktooth-terminal.png)

Inspired by:

[darktooth](https://github.com/sfromm/emacs-theme-darktooth)
[gruvbox](https://github.com/Greduan/emacs-theme-gruvbox)
[soothe](https://github.com/emacsfodder/emacs-soothe-theme)
