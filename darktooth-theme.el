;;; darktooth-theme.el --- A dark theme.

;; Copyright (c) 2020 Stephen Fromm
;; Copyright (c) 2015-2016 Jason Milkins

;; Authors: Stephen Fromm <sfromm@gmail.com>, Jason Milkins <jasonm23@gmail.com>
;; URL: http://github.com/sfromm/emacs-theme-darktooth
;; Version: 0.4

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;  From the darkness... it watches

;;; Credits:

;; Jason Milkins <jasonm23@gmail.com> created the original theme.

;;; Code:

(deftheme darktooth "A dark theme.")

(defgroup darktooth-theme nil
  "Darktooth theme."
  :group 'faces
  :prefix "darktooth-theme-"
  :link '(url-link :tag "GitHub" "http://github.com/sfromm/emacs-theme-darktooth")
  :tag "Darktooth theme")

(defcustom darktooth-use-variable-pitch nil
  "Use variable pitch face for some headings and titles."
  :type 'boolean
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-scale-headings t
  "Whether headings should be scaled."
  :type 'boolean
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-scale-plus-1 1.1
  "Font size +1."
  :type 'number
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-scale-plus-2 1.2
  "Font size +2."
  :type 'number
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-scale-plus-3 1.3
  "Font size +3."
  :type 'number
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-scale-plus-4 1.4
  "Font size +4."
  :type 'number
  :group 'darktooth-theme
  :package-version '(darktooth . "0.4"))

(defcustom darktooth-override-colors-alist '()
  "Place to override default theme colors.

You can override a subset of the theme's default colors by
defining them in this alist."
  :group 'darktooth-theme
  :type '(alist
          :key-type (string :tag "Name")
          :value-type (string :tag " Hex")))



;;; Color palette
;;;
(defvar darktooth-default-colors-alist
  '(("darktooth-dark0-hard"      . "#1D2021")
    ("darktooth-dark0"           . "#282828")
    ("darktooth-dark0-soft"      . "#32302F")
    ("darktooth-dark1"           . "#3C3836")
    ("darktooth-dark2"           . "#504945")
    ("darktooth-dark3"           . "#665C54")
    ("darktooth-dark4"           . "#7C6F64")
    ("darktooth-medium"          . "#928374")
    ("darktooth-light0-hard"     . "#FFFFC8")
    ("darktooth-light0"          . "#FDF4C1")
    ("darktooth-light0-soft"     . "#F4E8BA")
    ("darktooth-light1"          . "#EBDBB2")
    ("darktooth-light2"          . "#D5C4A1")
    ("darktooth-light3"          . "#BDAE93")
    ("darktooth-light4"          . "#A89984")
    ;;
    ("darktooth-white"           . "#FFFFFF")
    ("darktooth-black"           . "#000000")
    ("darktooth-sienna"          . "#DD6F48")
    ("darktooth-darkslategray4"  . "#528B8B")
    ("darktooth-lightblue4"      . "#66999D")
    ("darktooth-burlywood4"      . "#BBAA97")
    ("darktooth-aquamarine4"     . "#83A598")
    ("darktooth-turquoise4"      . "#61ACBB")
    ;; Bright variants
    ("darktooth-bright-red"      . "#FB4933")
    ("darktooth-bright-green"    . "#B8BB26")
    ("darktooth-bright-yellow"   . "#FABD2F")
    ("darktooth-bright-blue"     . "#83A598")
    ("darktooth-bright-purple"   . "#D3869B")
    ("darktooth-bright-aqua"     . "#8EC07C")
    ("darktooth-bright-orange"   . "#FE8019")
    ("darktooth-bright-cyan"     . "#3FD7E5")
    ;; Neutral variants
    ("darktooth-neutral-red"     . "#FB4934")
    ("darktooth-neutral-green"   . "#B8BB26")
    ("darktooth-neutral-yellow"  . "#FABD2F")
    ("darktooth-neutral-blue"    . "#83A598")
    ("darktooth-neutral-purple"  . "#D3869B")
    ("darktooth-neutral-aqua"    . "#8EC07C")
    ("darktooth-neutral-orange"  . "#FE8019")
    ("darktooth-neutral-cyan"    . "#17CCD5")
    ;; Faded variants
    ("darktooth-faded-red"       . "#9D0006")
    ("darktooth-faded-green"     . "#79740E")
    ("darktooth-faded-yellow"    . "#B57614")
    ("darktooth-faded-blue"      . "#076678")
    ("darktooth-faded-purple"    . "#8F3F71")
    ("darktooth-faded-aqua"      . "#427B58")
    ("darktooth-faded-orange"    . "#AF3A03")
    ("darktooth-faded-cyan"      . "#00A7AF")
    ;; Muted variants
    ("darktooth-muted-red"       . "#901A1E")
    ("darktooth-muted-green"     . "#556C21")
    ("darktooth-muted-yellow"    . "#A87933")
    ("darktooth-muted-blue"      . "#1B5C6B")
    ("darktooth-muted-purple"    . "#82526E")
    ("darktooth-muted-aqua"      . "#506E59")
    ("darktooth-muted-orange"    . "#A24921")
    ("darktooth-muted-cyan"      . "#18A7AF")
    ;; Dark variants
    ("darktooth-dark-red"        . "#421E1E")
    ("darktooth-dark-green"      . "#232B0F")
    ("darktooth-dark-yellow"     . "#4D3B27")
    ("darktooth-dark-blue"       . "#2B3C44")
    ("darktooth-dark-purple"     . "#4E3D45")
    ("darktooth-dark-aqua"       . "#36473A")
    ("darktooth-dark-orange"     . "#613620")
    ("darktooth-dark-cyan"       . "#205161")
    ;; Mid variants
    ("darktooth-mid-red"         . "#3F1B1B")
    ("darktooth-mid-green"       . "#1F321C")
    ("darktooth-mid-yellow"      . "#4C3A25")
    ("darktooth-mid-blue"        . "#30434C")
    ("darktooth-mid-purple"      . "#4C3B43")
    ("darktooth-mid-aqua"        . "#394C3D")
    ("darktooth-mid-orange"      . "#603000")
    ("darktooth-mid-cyan"        . "#005560")
    ;; delimiters
    ("darktooth-delimiter-one"   . "#5C7E81")
    ("darktooth-delimiter-two"   . "#837486")
    ("darktooth-delimiter-three" . "#9C6F68")
    ("darktooth-delimiter-four"  . "#7B665C")
    ;; identifiers
    ("darktooth-identifiers-1"   . "#E5D5C5")
    ("darktooth-identifiers-2"   . "#DFE5C5")
    ("darktooth-identifiers-3"   . "#D5E5C5")
    ("darktooth-identifiers-4"   . "#CAE5C5")
    ("darktooth-identifiers-5"   . "#C5E5CA")
    ("darktooth-identifiers-6"   . "#C5E5D5")
    ("darktooth-identifiers-7"   . "#C5E5DF")
    ("darktooth-identifiers-8"   . "#C5DFE5")
    ("darktooth-identifiers-9"   . "#C5D5E5")
    ("darktooth-identifiers-10"  . "#C5CAE5")
    ("darktooth-identifiers-11"  . "#CAC5E5")
    ("darktooth-identifiers-12"  . "#D5C5E5")
    ("darktooth-identifiers-13"  . "#DFC5E5")
    ("darktooth-identifiers-14"  . "#E5C5DF")
    ("darktooth-identifiers-15"  . "#E5C5D5"))
  "List of Darktooth colors.
Each element has the form (NAME . HEX).")

;; This macro is from zenburn theme.
(defmacro darktooth-with-color-variables (&rest body)
  "`let' bind all colors defined in `darktooth-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   (append darktooth-default-colors-alist
                           darktooth-override-colors-alist))
         (darktooth--variable-pitch (if darktooth-use-variable-pitch
                                        'variable-pitch 'default)))
     ,@body))



;;; theme faces

(darktooth-with-color-variables
 (custom-theme-set-faces
  'darktooth
  ;; Built-in

  ;; basic coloring
  '(button ((t (:underline t))))
  `(default ((t (:foreground ,darktooth-light0 :background ,darktooth-dark0))))
  `(variable-pitch ((t (:height ,darktooth-scale-plus-1))))
  `(cursor ((t (:background ,darktooth-light0))))
  `(link ((t (:foreground ,darktooth-bright-blue :underline t))))
  `(link-visited ((t (:foreground ,darktooth-bright-blue :underline nil))))
  `(fringe ((t (:foreground ,darktooth-dark4 :background ,darktooth-dark0))))
  `(header-line ((t (:foreground ,darktooth-turquoise4 :background ,darktooth-dark0 :bold nil))))
  ;;
  `(lazy-highlight ((t (:foreground ,darktooth-light0 :background ,darktooth-dark2))))
  `(highlight ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-blue))))
  `(shadow ((t (:foreground ,darktooth-dark4))))
  `(match ((t (:foreground ,darktooth-light0 :background ,darktooth-dark2))))
  `(error ((t (:foreground ,darktooth-bright-red :bold t))))
  `(success ((t (:foreground ,darktooth-neutral-green :bold t))))
  `(warning ((t (:foreground ,darktooth-bright-yellow :bold t))))
  `(tooltip ((t (:foreground ,darktooth-light0 :background ,darktooth-dark1))))
  ;;
  `(minibuffer-prompt ((t (:foreground ,darktooth-bright-cyan :background ,darktooth-dark0 :bold nil))))
  `(mode-line ((t (:foreground ,darktooth-light1 :background ,darktooth-dark0-hard :box nil))))
  `(mode-line-buffer-id ((t (:foreground ,darktooth-bright-yellow :weight bold))))
  `(mode-line-inactive ((t (:foreground ,darktooth-dark3 :background ,darktooth-dark0-hard :box nil))))
  ;;
  `(linum ((t (:foreground ,darktooth-dark2 :slant normal :background ,darktooth-dark0))))
  ;; line numbers, >= emacs-26.1
  `(line-number ((t (:foreground ,darktooth-light4 :background ,darktooth-dark1))))
  `(line-number-current-line ((t (:inherit line-number :foreground ,darktooth-bright-yellow))))
  ;;
  `(hl-line ((t (:background ,darktooth-dark1))))
  `(region ((t (:background ,darktooth-mid-blue :distant-foreground ,darktooth-light0))))
  `(secondary-selection ((t (:background ,darktooth-dark-blue))))
  `(cua-rectangle ((t (:background ,darktooth-mid-blue))))
  `(trailing-whitespace ((t (:background ,darktooth-faded-red))))
  `(vertical-border ((t (:foreground ,darktooth-dark3))))
  `(window-divider ((t (:foreground ,darktooth-dark0))))
  `(window-divider-first-pixel ((t (:inherit 'vertical-border))))
  `(window-divider-last-pixel ((t (:inherit 'window-divider))))

  ;; Mode Support

  ;; ac-dabbrev
  `(ac-dabbrev-menu-face ((t (:inherit 'popup-face))))
  `(ac-dabbrev-selection-face ((t (:inherit 'popup-menu-selection-face))))

  ;; ace-window
  ;; inherits mode-line-buffer-id
  `(aw-background-face ((t (:foreground ,darktooth-light0 :background ,darktooth-dark0 :inverse-video nil))))
  `(aw-leading-char-face ((t (:inherit aw-mode-line-face :background ,darktooth-dark4 :height ,1.5 :weight bold))))

  ;; ag (The Silver Searcher)
  `(ag-hit-face ((t (:foreground ,darktooth-neutral-blue))))
  `(ag-match-face ((t (:foreground ,darktooth-neutral-red))))

  ;; anzu
  `(anzu-mode-line ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(anzu-match-1 ((t (:foreground ,darktooth-dark0 :background ,darktooth-bright-green))))
  `(anzu-match-2 ((t (:foreground ,darktooth-dark0 :background ,darktooth-bright-yellow))))
  `(anzu-match-3 ((t (:foreground ,darktooth-dark0 :background ,darktooth-bright-cyan))))
  `(anzu-replace-highlight ((t (:background ,darktooth-dark-aqua))))
  `(anzu-replace-to ((t (:background ,darktooth-dark-cyan))))

  ;; avy
  `(avy-lead-face-0 ((t (:foreground ,darktooth-bright-blue))))
  `(avy-lead-face-1 ((t (:foreground ,darktooth-bright-aqua))))
  `(avy-lead-face-2 ((t (:foreground ,darktooth-bright-purple))))
  `(avy-lead-face ((t (:foreground ,darktooth-bright-red :weight bold))))
  `(avy-background-face ((t (:foreground ,darktooth-dark3))))
  `(avy-goto-char-timer-face ((t (:inherit 'highlight))))

  ;; col-highlight
  `(col-highlight ((t (:inherit 'vline))))

  ;; column-enforce-mode
  `(column-enforce-face ((t (:foreground ,darktooth-dark4 :background ,darktooth-dark-red))))

  ;; column-marker
  `(column-marker-1 ((t (:background ,darktooth-faded-blue))))
  `(column-marker-2 ((t (:background ,darktooth-faded-purple))))
  `(column-marker-3 ((t (:background ,darktooth-faded-cyan))))

  ;; company
  `(company-echo ((t (:inherit 'company-echo-common))))
  `(company-echo-common ((t (:foreground ,darktooth-bright-blue :background nil))))
  `(company-preview ((t (:inherit 'company-preview-common))))
  `(company-preview-search ((t (:inherit 'company-preview-common))))
  `(company-template-field ((t (:foreground ,darktooth-bright-blue :background nil :underline ,darktooth-dark-blue))))
  `(company-scrollbar-fg ((t (:foreground nil :background ,darktooth-dark2))))
  `(company-scrollbar-bg ((t (:foreground nil :background ,darktooth-dark3))))
  `(company-tooltip ((t (:foreground ,darktooth-light0-hard :background ,darktooth-dark1))))
  `(company-preview-common ((t (:inherit 'font-lock-comment-face))))
  `(company-tooltip-common ((t (:foreground ,darktooth-light0 :background ,darktooth-dark1))))
  `(company-tooltip-annotation ((t (:foreground ,darktooth-bright-blue :background ,darktooth-dark1))))
  `(company-tooltip-common-selection ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(company-tooltip-mouse ((t (:foreground ,darktooth-dark0 :background ,darktooth-bright-blue))))
  `(company-tooltip-selection ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))

  ;; compilation messages (also used by several other modes)
  `(compilation-info ((t (:foreground ,darktooth-neutral-green))))
  `(compilation-mode-line-fail ((t (:foreground ,darktooth-neutral-red))))

  ;; counsel
  `(counsel-key-binding ((t (:inherit font-lock-keyword-face :slant normal))))

  ;; diff
  `(diff-added ((t (:foreground ,darktooth-bright-green :background ,darktooth-mid-green))))
  `(diff-changed ((t (:foreground ,darktooth-light1 :background nil))))
  `(diff-context ((t (:foreground ,darktooth-dark3 :background nil))))
  `(diff-file-header ((t (:foreground ,darktooth-light0 :bold t))))
  `(diff-header ((t (:foreground "grey70" :background "grey25"))))
  `(diff-refine-added ((t (:foreground ,darktooth-bright-green :background ,darktooth-muted-green))))
  `(diff-refine-removed ((t (:foreground ,darktooth-bright-red :background ,darktooth-muted-red))))
  `(diff-removed ((t (:foreground ,darktooth-bright-red :background ,darktooth-mid-red))))

  ;; diff-hl
  `(diff-hl-change ((t (:inherit 'diff-changed))))
  `(diff-hl-delete ((t (:inherit 'diff-removed))))
  `(diff-hl-insert ((t (:inherit 'diff-added))))

  ;; diff-indicator
  `(diff-indicator-changed ((t (:inherit 'diff-changed))))
  `(diff-indicator-added ((t (:inherit 'diff-added))))
  `(diff-indicator-removed ((t (:inherit 'diff-removed))))

  ;; dired
  `(dired-directory ((t (:foreground ,darktooth-bright-blue))))
  `(dired-symlink ((t (:foreground ,darktooth-faded-cyan ))))

  ;; dired+
  `(diredp-file-name ((t (:foreground ,darktooth-light0 ))))
  `(diredp-file-suffix ((t (:foreground ,darktooth-light0 ))))
  `(diredp-compressed-file-suffix ((t (:inherit 'diredp-compressed-file-name))))
  `(diredp-compressed-file-name ((t (:foreground ,darktooth-faded-red))))
  `(diredp-dir-name ((t (:inherit 'dired-directory ))))
  `(diredp-dir-heading ((t (:foreground ,darktooth-bright-cyan ))))
  `(diredp-symlink ((t (:inherit 'dired-symlink))))
  `(diredp-date-time ((t (:foreground ,darktooth-faded-blue ))))
  `(diredp-number ((t (:foreground ,darktooth-bright-green ))))
  `(diredp-no-priv ((t (:foreground ,darktooth-dark4 ))))
  `(diredp-other-priv ((t (:foreground ,darktooth-dark2 ))))
  `(diredp-rare-priv ((t (:foreground ,darktooth-dark4 ))))
  `(diredp-ignored-file-name ((t (:foreground ,darktooth-dark4 ))))

  `(diredp-dir-priv ((t (:foreground ,darktooth-bright-blue))))
  `(diredp-exec-priv ((t (:foreground ,darktooth-bright-green))))
  `(diredp-link-priv ((t (:foreground ,darktooth-faded-cyan))))
  `(diredp-read-priv ((t (:foreground ,darktooth-bright-yellow))))
  `(diredp-write-priv ((t (:foreground ,darktooth-bright-red))))

  ;; diredfl
  `(diredfl-file-name ((t (:foreground ,darktooth-light0 ))))
  `(diredfl-file-suffix ((t (:inherit 'diredfl-file-name ))))
  `(diredfl-compressed-file-suffix ((t (:inherit 'diredfl-compressed-file-name))))
  `(diredfl-compressed-file-name ((t (:foreground ,darktooth-faded-red))))
  `(diredfl-dir-name ((t (:inherit 'dired-directory ))))
  `(diredfl-dir-heading ((t (:foreground ,darktooth-bright-cyan ))))
  `(diredfl-symlink ((t (:inherit 'dired-symlink))))
  `(diredfl-date-time ((t (:foreground ,darktooth-faded-blue ))))
  `(diredfl-number ((t (:foreground ,darktooth-bright-green ))))
  `(diredfl-no-priv ((t (:foreground ,darktooth-dark4 ))))
  `(diredfl-other-priv ((t (:foreground ,darktooth-dark2 ))))
  `(diredfl-rare-priv ((t (:foreground ,darktooth-dark4 ))))
  `(diredfl-ignored-file-name ((t (:foreground ,darktooth-dark4 ))))
  `(diredfl-dir-priv ((t (:foreground ,darktooth-bright-blue))))
  `(diredfl-exec-priv ((t (:foreground ,darktooth-bright-green))))
  `(diredfl-link-priv ((t (:foreground ,darktooth-faded-cyan))))
  `(diredfl-read-priv ((t (:foreground ,darktooth-bright-yellow))))
  `(diredfl-write-priv ((t (:foreground ,darktooth-bright-red))))

  ;; dired-subtree
  `(dired-subtree-depth-1-face ((t (:background ,darktooth-dark0))))
  `(dired-subtree-depth-2-face ((t (:background ,darktooth-dark0))))
  `(dired-subtree-depth-3-face ((t (:background ,darktooth-dark0))))
  `(dired-subtree-depth-4-face ((t (:background ,darktooth-dark0))))
  `(dired-subtree-depth-5-face ((t (:background ,darktooth-dark0))))
  `(dired-subtree-depth-6-face ((t (:background ,darktooth-dark0))))

  ;; egp
  `(egp-dir-face ((t (:foreground ,darktooth-light3))))

  ;; el-search
  `(el-search-match ((t (:background ,darktooth-dark-cyan))))
  `(el-search-other-match ((t (:background ,darktooth-dark-blue))))

  ;; eldoc
  `(eldoc-highlight-function-argument ((t (:foreground ,darktooth-aquamarine4 :weight bold))))

  ;; Elfeed
  `(elfeed-search-date-face ((t (:foreground ,darktooth-muted-cyan))))
  `(elfeed-search-feed-face ((t (:foreground ,darktooth-faded-cyan))))
  `(elfeed-search-tag-face ((t (:foreground ,darktooth-light3))))
  `(elfeed-search-title-face ((t (:foreground ,darktooth-light3))))
  `(elfeed-search-unread-count-face ((t (:foreground ,darktooth-muted-cyan :bold nil))))
  `(elfeed-search-unread-title-face ((t (:foreground ,darktooth-light0-hard :bold nil))))

  ;; elixir-mode
  `(elixir-atom-face ((t (:foreground ,darktooth-lightblue4))))
  `(elixir-attribute-face ((t (:foreground ,darktooth-burlywood4))))

  ;; elscreen
  `(elscreen-tab-background-face ((t (:background ,darktooth-dark0 :box nil))))
  `(elscreen-tab-control-face ((t (:foreground ,darktooth-neutral-red :background ,darktooth-dark2 :box nil :underline nil))))
  `(elscreen-tab-current-screen-face ((t (:foreground ,darktooth-dark0 :background ,darktooth-dark4 :box nil))))
  `(elscreen-tab-other-screen-face ((t (:foreground ,darktooth-light4 :background ,darktooth-dark2 :box nil :underline nil))))

  ;; embrace
  `(embrace-help-pair-face ((t (:foreground ,darktooth-bright-blue))))
  `(embrace-help-separator-face ((t (:foreground ,darktooth-bright-orange))))
  `(embrace-help-key-face ((t (:weight bold ,darktooth-bright-green))))
  `(embrace-help-mark-func-face ((t (:foreground ,darktooth-bright-cyan))))

  ;; emms
  `(emms-browser-artist-face ((t (:foreground ,darktooth-bright-orange))))
  `(emms-browser-album-face ((t (:foreground ,darktooth-bright-green))))
  `(emms-browser-track-face ((t (:foreground ,darktooth-bright-blue))))
  `(emms-playlist-selected-face ((t (:foreground ,darktooth-bright-red))))
  `(emms-playlist-track-face ((t (:foreground ,darktooth-light2))))

  ;; erc
  `(erc-action-face ((t (:inherit 'erc-default-face))))
  `(erc-bold-face ((t (:weight bold))))
  `(erc-current-nick-face ((t (:foreground ,darktooth-aquamarine4 :weight bold :slant italic))))
  `(erc-nick-default-face ((t ())))
  `(erc-dangerous-host-face ((t (:inherit 'font-lock-warning-face))))
  `(erc-default-face ((t (:inherit 'default))))
  `(erc-direct-msg-face ((t (:inherit 'erc-default-face))))
  `(erc-error-face ((t (:inherit 'font-lock-warning-face))))
  `(erc-fool-face ((t (:inherit 'erc-default-face))))
  `(erc-input-face ((t (:inherit 'default))))
  `(erc-my-nick-face ((t (:inherit 'erc-current-nick-face))))
  `(erc-nick-msg-face ((t (:foreground ,darktooth-sienna))))
  `(erc-nick-prefix-face ((t (:foreground ,darktooth-bright-green))))
  `(erc-my-nick-prefix-face ((t (:foreground ,darktooth-bright-green))))
  `(erc-notice-face ((t (:inherit 'font-lock-comment-face))))
  `(erc-timestamp-face ((t (:inherit 'shadow))))
  `(erc-underline-face ((t (:underline t))))
  `(erc-prompt-face ((t (:foreground ,darktooth-bright-green))))
  `(erc-pal-face ((t (:foreground ,darktooth-neutral-yellow :weight bold))))
  `(erc-keyword-face ((t (:foreground ,darktooth-bright-orange :weight bold))))
  `(erc-button ((t (:inherit 'link))))

  ;; eshell
  `(eshell-ls-directory ((t (:foreground ,darktooth-bright-blue))))
  `(eshell-ls-symlink ((t (:foreground ,darktooth-faded-cyan))))
  `(eshell-ls-executable ((t (:foreground ,darktooth-bright-green))))
  `(eshell-ls-product ((t (:foreground "#af875f"))))
  `(eshell-ls-archive ((t (:foreground ,darktooth-bright-red))))

  ;; evil-mc
  `(evil-mc-cursor-default-face ((t (:inherit 'default :inverse-video t))))

  ;; flycheck
  `(flycheck-warning ((t (:underline (:style wave :color ,darktooth-bright-yellow)))))
  `(flycheck-error ((t (:underline (:style wave :color ,darktooth-bright-red)))))
  `(flycheck-info ((t (:underline (:style wave :color ,darktooth-bright-blue)))))
  `(flycheck-fringe-warning ((t (:foreground ,darktooth-bright-yellow))))
  `(flycheck-fringe-error ((t (:foreground ,darktooth-bright-red))))
  `(flycheck-fringe-info ((t (:foreground ,darktooth-bright-blue))))
  `(flycheck-error-list-warning ((t (:foreground ,darktooth-bright-yellow :bold t))))
  `(flycheck-error-list-error ((t (:foreground ,darktooth-bright-red :bold t))))
  `(flycheck-error-list-info ((t (:foreground ,darktooth-bright-blue :bold t))))

  ;; flymake
  `(flymake-warning ((t (:underline (:style 'wave :color ,darktooth-bright-yellow)))))
  `(flymake-error ((t (:underline (:style 'wave :color ,darktooth-bright-red)))))
  `(flymake-note ((t (:underline (:style 'wave :color ,darktooth-bright-blue)))))
  `(flymake-errline ((t (:underline (:style 'wave :color ,darktooth-bright-red)))))
  `(flymake-warline ((t (:underline (:style 'wave :color ,darktooth-bright-yellow)))))

  ;; auctex
  `(font-latex-math-face ((t (:foreground ,darktooth-lightblue4))))
  `(font-latex-sectioning-5-face ((t (:foreground ,darktooth-neutral-green))))
  `(font-latex-string-face ((t (:inherit 'font-lock-string-face))))
  `(font-latex-warning-face ((t (:inherit 'warning))))

  ;; font-lock
  `(font-lock-builtin-face ((t (:foreground ,darktooth-bright-orange :slant italic))))
  `(font-lock-constant-face ((t (:foreground ,darktooth-burlywood4 :slant italic))))
  `(font-lock-comment-face ((t (:foreground ,darktooth-dark4 :slant italic))))
  `(font-lock-function-name-face ((t (:foreground ,darktooth-light4))))
  `(font-lock-keyword-face ((t (:foreground ,darktooth-sienna :slant italic))))
  `(font-lock-string-face ((t (:foreground ,darktooth-darkslategray4))))
  `(font-lock-variable-name-face ((t (:foreground ,darktooth-aquamarine4))))
  `(font-lock-type-face ((t (:foreground ,darktooth-lightblue4 :slant italic))))
  `(font-lock-warning-face ((t (:foreground ,darktooth-neutral-red :bold t))))

  ;; git-commit
  `(git-commit-summary ((t (:inherit 'font-lock-type-face :slant normal))))

  ;; git-gutter
  `(git-gutter:added ((t (:foreground ,darktooth-bright-green))))
  `(git-gutter:deleted ((t (:foreground ,darktooth-bright-red))))
  `(git-gutter:modified ((t (:foreground ,darktooth-bright-purple))))
  `(git-gutter:separator ((t (:foreground ,darktooth-faded-cyan :background ,darktooth-muted-cyan ))))
  `(git-gutter:unchanged ((t (:foreground ,darktooth-faded-yellow :background ,darktooth-muted-yellow ))))

  ;; git-gutter-fr
  `(git-gutter-fr:added ((t (:inherit 'git-gutter:added))))
  `(git-gutter-fr:deleted ((t (:inherit 'git-gutter:deleted))))
  `(git-gutter-fr:modified ((t (:inherit 'git-gutter:modified))))

  ;; git-gutter+
  `(git-gutter+-commit-header-face ((t (:inherit 'font-lock-comment-face))))
  `(git-gutter+-added ((t (:foreground ,darktooth-faded-green :background ,darktooth-muted-green ))))
  `(git-gutter+-deleted ((t (:foreground ,darktooth-faded-red :background ,darktooth-muted-red ))))
  `(git-gutter+-modified ((t (:foreground ,darktooth-faded-purple :background ,darktooth-muted-purple ))))
  `(git-gutter+-separator ((t (:foreground ,darktooth-faded-cyan :background ,darktooth-muted-cyan ))))
  `(git-gutter+-unchanged ((t (:foreground ,darktooth-faded-yellow :background ,darktooth-muted-yellow ))))

  ;; git-gutter-fr+
  `(git-gutter-fr+-added ((t (:inherit 'git-gutter+-added))))
  `(git-gutter-fr+-deleted ((t (:inherit 'git-gutter+-deleted))))
  `(git-gutter-fr+-modified ((t (:inherit 'git-gutter+-modified))))

  ;; grep
  `(grep-context-face ((t (:foreground ,darktooth-light0))))
  `(grep-error-face ((t (:foreground ,darktooth-bright-red :weight bold :underline t))))
  `(grep-hit-face ((t (:foreground ,darktooth-bright-green))))
  `(grep-match-face ((t (:foreground ,darktooth-bright-yellow :weight bold))))

  ;; haskell
  `(haskell-interactive-face-compile-warning  ((t (:underline (:color ,darktooth-bright-yellow :style 'wave)))))
  `(haskell-interactive-face-compile-error ((t (:underline (:color ,darktooth-bright-red :style 'wave)))))
  `(haskell-interactive-face-garbage ((t (:foreground ,darktooth-dark4 :background nil))))
  `(haskell-interactive-face-prompt ((t (:foreground ,darktooth-light0 :background nil))))
  `(haskell-interactive-face-result ((t (:foreground ,darktooth-light3 :background nil))))
  `(haskell-literate-comment-face ((t (:foreground ,darktooth-light0 :background nil))))
  `(haskell-pragma-face ((t (:foreground ,darktooth-medium :background nil))))
  `(haskell-constructor-face ((t (:foreground ,darktooth-neutral-aqua :background nil))))

  ;; helm
  `(helm-M-x-key ((t (:foreground ,darktooth-neutral-orange))))
  `(helm-action ((t (:foreground ,darktooth-white :underline t))))
  `(helm-bookmark-addressbook ((t (:foreground ,darktooth-neutral-red))))
  `(helm-bookmark-directory ((t (:foreground ,darktooth-bright-purple))))
  `(helm-bookmark-file ((t (:foreground ,darktooth-faded-blue))))
  `(helm-bookmark-gnus ((t (:foreground ,darktooth-faded-purple))))
  `(helm-bookmark-info ((t (:foreground ,darktooth-turquoise4))))
  `(helm-bookmark-man ((t (:foreground ,darktooth-sienna))))
  `(helm-bookmark-w3m ((t (:foreground ,darktooth-neutral-yellow))))
  `(helm-buffer-directory ((t (:foreground ,darktooth-white :background ,darktooth-bright-blue))))
  `(helm-buffer-not-saved ((t (:foreground ,darktooth-faded-red))))
  `(helm-buffer-process ((t (:foreground ,darktooth-burlywood4))))
  `(helm-buffer-saved-out ((t (:foreground ,darktooth-bright-red))))
  `(helm-buffer-size ((t (:foreground ,darktooth-bright-purple))))
  `(helm-candidate-number ((t (:foreground ,darktooth-neutral-green))))
  `(helm-ff-directory ((t (:foreground ,darktooth-neutral-purple))))
  `(helm-ff-executable ((t (:foreground ,darktooth-turquoise4))))
  `(helm-ff-file ((t (:foreground ,darktooth-sienna))))
  `(helm-ff-invalid-symlink ((t (:foreground ,darktooth-white :background ,darktooth-bright-red))))
  `(helm-ff-prefix ((t (:foreground ,darktooth-black :background ,darktooth-neutral-yellow))))
  `(helm-ff-symlink ((t (:foreground ,darktooth-neutral-orange))))
  `(helm-grep-cmd-line ((t (:foreground ,darktooth-neutral-green))))
  `(helm-grep-file ((t (:foreground ,darktooth-faded-purple))))
  `(helm-grep-finish ((t (:foreground ,darktooth-turquoise4))))
  `(helm-grep-lineno ((t (:foreground ,darktooth-neutral-orange))))
  `(helm-grep-match ((t (:foreground ,darktooth-neutral-yellow))))
  `(helm-grep-running ((t (:foreground ,darktooth-neutral-red))))
  `(helm-header ((t (:foreground ,darktooth-aquamarine4))))
  `(helm-helper ((t (:foreground ,darktooth-aquamarine4))))
  `(helm-history-deleted ((t (:foreground ,darktooth-black :background ,darktooth-bright-red))))
  `(helm-history-remote ((t (:foreground ,darktooth-faded-red))))
  `(helm-lisp-completion-info ((t (:foreground ,darktooth-faded-orange))))
  `(helm-lisp-show-completion ((t (:foreground ,darktooth-bright-red))))
  `(helm-locate-finish ((t (:foreground ,darktooth-white :background ,darktooth-aquamarine4))))
  `(helm-match ((t (:foreground ,darktooth-neutral-orange))))
  `(helm-moccur-buffer ((t (:foreground ,darktooth-bright-aqua :underline t))))
  `(helm-prefarg ((t (:foreground ,darktooth-turquoise4))))
  `(helm-selection ((t (:foreground ,darktooth-white :background ,darktooth-dark2))))
  `(helm-selection-line ((t (:foreground ,darktooth-white :background ,darktooth-dark2))))
  `(helm-separator ((t (:foreground ,darktooth-faded-red))))
  `(helm-source-header ((t (:foreground ,darktooth-light2 :background ,darktooth-dark1))))
  `(helm-visible-mark ((t (:foreground ,darktooth-black :background ,darktooth-light3))))

  ;; helm-swoop
  `(helm-swoop-target-word-face ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-aqua))))
  `(helm-swoop-target-line-block-face ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-blue))))
  `(helm-swoop-target-line-face ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-blue))))
  `(helm-swoop-line-number-face ((t (:foreground ,darktooth-neutral-orange))))

  ;; hi-lock
  `(hi-blue ((t (:foreground ,darktooth-dark0-hard :background ,darktooth-bright-blue ))))
  `(hi-green ((t (:foreground ,darktooth-dark0-hard :background ,darktooth-bright-green ))))
  `(hi-pink ((t (:foreground ,darktooth-dark0-hard :background ,darktooth-bright-purple ))))
  `(hi-yellow ((t (:foreground ,darktooth-dark0-hard :background ,darktooth-bright-yellow ))))
  `(hi-blue-b ((t (:foreground ,darktooth-bright-blue :bold t ))))
  `(hi-green-b ((t (:foreground ,darktooth-bright-green :bold t ))))
  `(hi-red-b ((t (:foreground ,darktooth-bright-red :bold t  ))))
  `(hi-black-b ((t (:foreground ,darktooth-bright-orange :background ,darktooth-dark0-hard :bold t  ))))
  `(hi-black-hb ((t (:foreground ,darktooth-bright-cyan :background ,darktooth-dark0-hard :bold t  ))))

  ;; highlight-indentation-mode
  `(highlight-indentation-current-column-face ((t (:background ,darktooth-dark4))))
  `(highlight-indentation-face ((t (:background ,darktooth-dark1))))

  ;; highlight-numbers
  `(highlight-numbers-number ((t (:foreground ,darktooth-bright-purple :bold nil))))

  ;; highlight-symbol
  `(highlight-symbol-face ((t (:foreground ,darktooth-neutral-purple))))

  ;; hydra
  `(hydra-face-red ((t (:foreground ,darktooth-bright-red))))
  `(hydra-face-blue ((t (:foreground ,darktooth-bright-blue))))
  `(hydra-face-pink ((t (:foreground ,darktooth-identifiers-15))))
  `(hydra-face-amaranth ((t (:foreground ,darktooth-faded-purple))))
  `(hydra-face-teal ((t (:foreground ,darktooth-faded-cyan))))

  ;; ido
  `(ido-indicator ((t (:background ,darktooth-bright-red :foreground ,darktooth-bright-yellow))))
  `(ido-subdir ((t (:foreground ,darktooth-light3))))
  `(ido-first-match ((t (:foreground ,darktooth-faded-cyan :background ,darktooth-dark0-hard))))
  `(ido-only-match ((t (:foreground ,darktooth-darkslategray4))))
  `(ido-vertical-match-face ((t (:bold t))))
  `(ido-vertical-only-match-face ((t (:foreground ,darktooth-bright-cyan))))
  `(ido-vertical-first-match-face ((t (:foreground ,darktooth-bright-cyan :background ,darktooth-dark-blue))))

  ;; info
  `(info-title-4 ((t (:weight bold))))
  `(info-menu-header ((t (:weight bold))))

  ;; info+
  `(Info-quoted ((t (:inherit 'org-code))))

  ;; isearch
  `(isearch ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-aqua))))
  `(isearch-fail ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-red))))

  ;; ivy
  `(ivy-confirm-face ((t (:foreground ,darktooth-bright-green))))
  `(ivy-current-match ((t (:inherit 'hl-line))))
  `(ivy-cursor ((t (:foreground ,darktooth-light0 :background ,darktooth-dark0))))
  `(ivy-highlight-face ((t (:foreground nil))))
  `(ivy-match-required-face ((t (:foreground ,darktooth-bright-red))))
  `(ivy-minibuffer-match-face-1 ((t (:background nil))))
  `(ivy-minibuffer-match-face-2 ((t (:foreground ,darktooth-light0 :underline t))))
  `(ivy-minibuffer-match-face-3 ((t (:foreground ,darktooth-light1 :underline t))))
  `(ivy-minibuffer-match-face-4 ((t (:foreground ,darktooth-light2 :underline t))))
  `(ivy-modified-buffer ((t (:foreground ,darktooth-bright-orange))))
  `(ivy-prompt-match ((t (:foreground nil :background ,darktooth-neutral-blue))))
  `(ivy-remote ((t (:foreground ,darktooth-bright-purple))))
  `(ivy-virtual ((t (:inherit 'font-lock-comment-face :slant normal))))

  ;; js2
  `(js2-warning ((t (:underline (:color ,darktooth-bright-yellow :style 'wave)))))
  `(js2-error ((t (:underline (:color ,darktooth-bright-red :style 'wave)))))
  `(js2-external-variable ((t (:underline (:color ,darktooth-bright-aqua :style 'wave)))))
  `(js2-jsdoc-tag ((t (:foreground ,darktooth-medium :background nil))))
  `(js2-jsdoc-type ((t (:foreground ,darktooth-light4 :background nil))))
  `(js2-jsdoc-value ((t (:foreground ,darktooth-light3 :background nil))))
  `(js2-function-param ((t (:foreground ,darktooth-bright-aqua :background nil))))
  `(js2-function-call ((t (:foreground ,darktooth-bright-blue :background nil))))
  `(js2-instance-member ((t (:foreground ,darktooth-bright-orange :background nil))))
  `(js2-private-member ((t (:foreground ,darktooth-faded-yellow :background nil))))
  `(js2-private-function-call ((t (:foreground ,darktooth-faded-aqua :background nil))))
  `(js2-jsdoc-html-tag-name ((t (:foreground ,darktooth-light4 :background nil))))
  `(js2-jsdoc-html-tag-delimiter ((t (:foreground ,darktooth-light3 :background nil))))

  ;; linum-relative
  `(linum-relative-current-face ((t (:foreground ,darktooth-light4 :background ,darktooth-dark1))))

  ;; nlinum-relative
  `(nlinum-relative-current-face ((t (:foreground ,darktooth-light4 :background ,darktooth-dark1 :slant normal))))

  ;; magit
  `(magit-section-highlight ((t (:background ,darktooth-dark0-soft))))
  `(magit-branch ((t (:foreground ,darktooth-turquoise4 :background nil))))
  `(magit-branch-local ((t (:foreground ,darktooth-turquoise4 :background nil))))
  `(magit-branch-remote ((t (:foreground ,darktooth-aquamarine4 :background nil))))
  `(magit-cherry-equivalent ((t (:foreground ,darktooth-neutral-orange))))
  `(magit-cherry-unmatched ((t (:foreground ,darktooth-neutral-purple))))
  `(magit-diff-context ((t (:foreground ,darktooth-dark3 :background nil))))
  `(magit-diff-context-highlight ((t (:foreground ,darktooth-dark4 :background ,darktooth-dark0-soft))))
  `(magit-diff-added ((t (:foreground ,darktooth-bright-green :background ,darktooth-mid-green))))
  `(magit-diff-added-highlight ((t (:foreground ,darktooth-bright-green :background ,darktooth-mid-green))))
  `(magit-diff-removed ((t (:foreground ,darktooth-bright-red :background ,darktooth-mid-red))))
  `(magit-diff-removed-highlight ((t (:foreground ,darktooth-bright-red :background ,darktooth-mid-red))))
  `(magit-diff-add ((t (:foreground ,darktooth-bright-green))))
  `(magit-diff-del ((t (:foreground ,darktooth-bright-red))))
  `(magit-diff-file-header ((t (:foreground ,darktooth-bright-blue))))
  `(magit-diff-hunk-header ((t (:foreground ,darktooth-neutral-aqua))))
  `(magit-diff-merge-current ((t (:background ,darktooth-dark-yellow))))
  `(magit-diff-merge-diff3-separator ((t (:foreground ,darktooth-neutral-orange :weight bold))))
  `(magit-diff-merge-proposed ((t (:background ,darktooth-dark-green))))
  `(magit-diff-merge-separator ((t (:foreground ,darktooth-neutral-orange))))
  `(magit-diff-none ((t (:foreground ,darktooth-medium))))
  `(magit-item-highlight ((t (:background ,darktooth-dark1 :weight normal))))
  `(magit-item-mark ((t (:background ,darktooth-dark0))))
  `(magit-key-mode-args-face ((t (:foreground ,darktooth-light4))))
  `(magit-key-mode-button-face ((t (:foreground ,darktooth-neutral-orange :weight bold))))
  `(magit-key-mode-header-face ((t (:foreground ,darktooth-light4 :weight bold))))
  `(magit-key-mode-switch-face ((t (:foreground ,darktooth-turquoise4 :weight bold))))
  `(magit-log-author ((t (:foreground ,darktooth-neutral-aqua))))
  `(magit-log-date ((t (:foreground ,darktooth-faded-orange))))
  `(magit-log-graph ((t (:foreground ,darktooth-light1))))
  `(magit-log-head-label-bisect-bad ((t (:foreground ,darktooth-bright-red))))
  `(magit-log-head-label-bisect-good ((t (:foreground ,darktooth-bright-green))))
  `(magit-log-head-label-bisect-skip ((t (:foreground ,darktooth-neutral-yellow))))
  `(magit-log-head-label-default ((t (:foreground ,darktooth-neutral-blue))))
  `(magit-log-head-label-head ((t (:foreground ,darktooth-light0 :background ,darktooth-dark-aqua))))
  `(magit-log-head-label-local ((t (:foreground ,darktooth-faded-blue :weight bold))))
  `(magit-log-head-label-patches ((t (:foreground ,darktooth-faded-orange))))
  `(magit-log-head-label-remote ((t (:foreground ,darktooth-neutral-blue :weight bold))))
  `(magit-log-head-label-tags ((t (:foreground ,darktooth-neutral-aqua))))
  `(magit-log-head-label-wip ((t (:foreground ,darktooth-neutral-red))))
  `(magit-log-message ((t (:foreground ,darktooth-light1))))
  `(magit-log-reflog-label-amend ((t (:foreground ,darktooth-bright-blue))))
  `(magit-log-reflog-label-checkout ((t (:foreground ,darktooth-bright-yellow))))
  `(magit-log-reflog-label-cherry-pick ((t (:foreground ,darktooth-neutral-red))))
  `(magit-log-reflog-label-commit ((t (:foreground ,darktooth-neutral-green))))
  `(magit-log-reflog-label-merge ((t (:foreground ,darktooth-bright-green))))
  `(magit-log-reflog-label-other ((t (:foreground ,darktooth-faded-red))))
  `(magit-log-reflog-label-rebase ((t (:foreground ,darktooth-bright-blue))))
  `(magit-log-reflog-label-remote ((t (:foreground ,darktooth-neutral-orange))))
  `(magit-log-reflog-label-reset ((t (:foreground ,darktooth-neutral-yellow))))
  `(magit-log-sha1 ((t (:foreground ,darktooth-bright-orange))))
  `(magit-process-ng ((t (:foreground ,darktooth-bright-red :weight bold))))
  `(magit-process-ok ((t (:foreground ,darktooth-bright-green :weight bold))))
  `(magit-section-heading ((t (:foreground ,darktooth-light2 :background ,darktooth-dark-blue))))
  `(magit-signature-bad ((t (:foreground ,darktooth-bright-red :weight bold))))
  `(magit-signature-good ((t (:foreground ,darktooth-bright-green :weight bold))))
  `(magit-signature-none ((t (:foreground ,darktooth-faded-red))))
  `(magit-signature-untrusted ((t (:foreground ,darktooth-bright-purple :weight bold))))
  `(magit-tag ((t (:foreground ,darktooth-darkslategray4))))
  `(magit-whitespace-warning-face ((t (:background ,darktooth-faded-red))))
  `(magit-bisect-bad ((t (:foreground ,darktooth-faded-red))))
  `(magit-bisect-good ((t (:foreground ,darktooth-neutral-green))))
  `(magit-bisect-skip ((t (:foreground ,darktooth-light2))))
  `(magit-blame-date ((t (:inherit 'magit-blame-heading))))
  `(magit-blame-name ((t (:inherit 'magit-blame-heading))))
  `(magit-blame-hash ((t (:inherit 'magit-blame-heading))))
  `(magit-blame-summary ((t (:inherit 'magit-blame-heading))))
  `(magit-blame-heading ((t (:background ,darktooth-dark1 :foreground ,darktooth-light0))))
  `(magit-sequence-onto ((t (:inherit 'magit-sequence-done))))
  `(magit-sequence-done ((t (:inherit 'magit-hash))))
  `(magit-sequence-drop ((t (:foreground ,darktooth-faded-red))))
  `(magit-sequence-head ((t (:foreground ,darktooth-faded-cyan))))
  `(magit-sequence-part ((t (:foreground ,darktooth-bright-yellow))))
  `(magit-sequence-stop ((t (:foreground ,darktooth-bright-aqua))))
  `(magit-sequence-pick ((t (:inherit 'default))))
  `(magit-filename ((t (:weight normal))))
  `(magit-refname-wip ((t (:inherit 'magit-refname))))
  `(magit-refname-stash ((t (:inherit 'magit-refname))))
  `(magit-refname ((t (:foreground ,darktooth-light2))))
  `(magit-head ((t (:inherit 'magit-branch-local))))
  `(magit-popup-disabled-argument ((t (:foreground ,darktooth-light4))))

  ;; man
  `(Man-overstrike ((t (:foreground ,darktooth-sienna))))
  `(Man-underline ((t (:foreground ,darktooth-aquamarine4))))

  ;; markdown
  `(markdown-code-face ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))
  `(markdown-inline-code-face ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))
  `(markdown-header-face-1 ((t (:foreground ,darktooth-bright-orange))))
  `(markdown-header-face-2 ((t (:foreground ,darktooth-bright-green))))
  `(markdown-header-face-3 ((t (:foreground ,darktooth-bright-blue))))
  `(markdown-header-face-4 ((t (:foreground ,darktooth-bright-yellow))))
  `(markdown-header-face-5 ((t (:foreground ,darktooth-faded-aqua))))
  `(markdown-header-face-6 ((t (:foreground ,darktooth-bright-green))))

  ;; message
  `(message-header-to ((t (:foreground ,darktooth-bright-cyan ))))
  `(message-header-cc ((t (:foreground ,darktooth-bright-cyan ))))
  `(message-header-subject ((t (:foreground ,darktooth-light2 ))))
  `(message-header-newsgroups ((t (:foreground ,darktooth-bright-cyan ))))
  `(message-header-other ((t (:foreground ,darktooth-muted-cyan  ))))
  `(message-header-name ((t (:foreground ,darktooth-bright-cyan ))))
  `(message-header-xheader ((t (:foreground ,darktooth-faded-cyan ))))
  `(message-separator ((t (:foreground ,darktooth-faded-cyan ))))
  `(message-cited-text ((t (:foreground ,darktooth-light3 ))))
  `(message-mml ((t (:foreground ,darktooth-faded-aqua ))))

  ;; notmuch
  `(notmuch-hello-logo-background ((t (:inherit 'default))))
  `(notmuch-message-summary-face ((t (:foreground ,darktooth-light0-soft :background ,darktooth-dark4 :weight bold))))
  `(notmuch-search-count ((t (:inherit 'default))))
  `(notmuch-search-date ((t (:foreground ,darktooth-neutral-cyan))))
  `(notmuch-search-flagged-face ((t (:foreground ,darktooth-bright-cyan))))
  `(notmuch-search-matching-authors ((t (:inherit 'default))))
  `(notmuch-search-non-matching-authors ((t (:inherit 'default))))
  `(notmuch-search-subject ((t (:inherit 'default))))
  `(notmuch-search-unread-face ((t (:weight bold))))
  `(notmuch-tag-added ((t (:underline ,darktooth-neutral-green))))
  `(notmuch-tag-deleted ((t (:strike-through ,darktooth-neutral-red))))
  `(notmuch-tag-face ((t (:foreground ,darktooth-neutral-yellow))))
  `(notmuch-tag-flagged ((t (:foreground ,darktooth-bright-blue))))
  `(notmuch-tag-unread ((t (:foreground ,darktooth-neutral-red))))
  `(notmuch-tree-match-author-face ((t (:foreground ,darktooth-neutral-blue))))
  `(notmuch-tree-match-date-face ((t (:foreground ,darktooth-neutral-yellow))))
  `(notmuch-tree-match-tag-face ((t (:foreground ,darktooth-neutral-cyan))))
  `(notmuch-tree-no-match-face ((t (:inherit font-lock-comment-face))))

  ;; org-mode
  `(org-agenda-date-today ((t (:foreground ,darktooth-light2 :slant italic :weight bold))))
  `(org-agenda-structure ((t (:inherit 'font-lock-comment-face))))
  `(org-archived ((t (:foreground ,darktooth-light0 :weight bold))))
  `(org-date ((t (:foreground ,darktooth-faded-aqua :underline t))))
  `(org-checkbox ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0))))
  `(org-checkbox-statistics-todo ((t (:inherit 'org-todo :weight normal))))
  `(org-deadline-announce ((t (:foreground ,darktooth-faded-red))))
  `(org-document-info-keyword ((t (:foreground ,darktooth-light2))))
  `(org-document-info ((t (:foreground ,darktooth-identifiers-7))))
  `(org-document-title ((t (:foreground ,darktooth-bright-cyan))))
  `(org-done ((t (:foreground ,darktooth-bright-green :bold t :weight bold))))
  `(org-formula ((t (:foreground ,darktooth-bright-yellow))))
  `(org-headline-done ((t (:inherit 'shadow))))
  `(org-hide ((t (:foreground ,darktooth-dark0))))
  `(org-level-1 ((t (:inherit ,darktooth--variable-pitch
                              :foreground ,darktooth-bright-orange
                              ,@(when darktooth-scale-headings
                                   (list :height darktooth-scale-plus-4))))))
  `(org-level-2 ((t (:inherit ,darktooth--variable-pitch
                              :foreground ,darktooth-bright-green
                              ,@(when darktooth-scale-headings
                                  (list :height darktooth-scale-plus-3))))))
  `(org-level-3 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-bright-blue
                              ,@(when darktooth-scale-headings
                                   (list :height darktooth-scale-plus-2))))))
  `(org-level-4 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-bright-yellow
                              ,@(when darktooth-scale-headings
                                   (list :height darktooth-scale-plus-1))))))
  `(org-level-5 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-faded-aqua))))
  `(org-level-6 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-bright-green))))
  `(org-level-7 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-bright-red))))
  `(org-level-8 ((t (:inherit ,darktooth--variable-pitch :foreground ,darktooth-bright-blue))))
  `(org-link ((t (:foreground ,darktooth-bright-yellow :underline t))))
  `(org-scheduled ((t (:foreground ,darktooth-bright-green))))
  `(org-scheduled-previously ((t (:foreground ,darktooth-bright-red))))
  `(org-scheduled-today ((t (:foreground ,darktooth-bright-blue))))
  `(org-sexp-date ((t (:foreground ,darktooth-bright-blue :underline t))))
  `(org-special-keyword ((t (:inherit 'font-lock-comment-face))))
  `(org-table ((t (:foreground ,darktooth-bright-green))))
  `(org-tag ((t (:bold t :weight bold))))
  `(org-time-grid ((t (:inherit font-lock-comment-face :slant normal))))
  `(org-todo ((t (:foreground ,darktooth-bright-red :weight bold :bold t))))
  `(org-upcoming-deadline ((t (:inherit 'font-lock-keyword-face))))
  `(org-warning ((t (:foreground ,darktooth-bright-red :underline nil :bold t))))
  `(org-column ((t (:background ,darktooth-dark0))))
  `(org-column-title ((t (:background ,darktooth-dark0-hard :underline t :weight bold))))
  `(org-mode-line-clock ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0))))
  `(org-mode-line-clock-overrun ((t (:foreground ,darktooth-black :background ,darktooth-bright-red))))
  `(org-ellipsis ((t (:inherit 'font-lock-comment-face :slant normal :underline nil))))
  `(org-footnote ((t (:foreground ,darktooth-faded-aqua :underline t))))
  `(org-block ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))
  `(org-code ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))
  `(org-verbatim ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))
  `(org-agenda-current-time ((t (:foreground ,darktooth-bright-green))))
  `(org-list-dt ((t (:inherit 'font-lock-keyword-face))))
  `(org-agenda-done ((t (:foreground ,darktooth-bright-green))))

  ;; outline
  `(outline-1 ((t (:inherit 'org-level-1))))
  `(outline-2 ((t (:inherit 'org-level-2))))
  `(outline-3 ((t (:inherit 'org-level-3))))
  `(outline-4 ((t (:inherit 'org-level-4))))
  `(outline-5 ((t (:inherit 'org-level-5))))
  `(outline-6 ((t (:inherit 'org-level-6))))
  `(outline-7 ((t (:inherit 'org-level-7))))
  `(outline-8 ((t (:inherit 'org-level-8))))

  ;; popup
  `(popup-face ((t (:foreground ,darktooth-light0 :background ,darktooth-dark1))))
  `(popup-menu-mouse-face ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(popup-menu-selection-face ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(popup-tip-face ((t (:foreground ,darktooth-light0-hard :background ,darktooth-dark-aqua))))

  ;; powerline
  `(powerline-active1 ((t (:background ,darktooth-dark0-hard :inherit 'mode-line))))
  `(powerline-active2 ((t (:background ,darktooth-dark0-hard :inherit 'mode-line))))
  `(powerline-inactive1 ((t (:background ,darktooth-dark0-hard :inherit 'mode-line-inactive))))
  `(powerline-inactive2 ((t (:background ,darktooth-dark0-hard :inherit 'mode-line-inactive))))

  ;; rainbow-delimiters
  `(rainbow-delimiters-depth-1-face ((t (:foreground ,darktooth-delimiter-one))))
  `(rainbow-delimiters-depth-2-face ((t (:foreground ,darktooth-delimiter-two))))
  `(rainbow-delimiters-depth-3-face ((t (:foreground ,darktooth-delimiter-three))))
  `(rainbow-delimiters-depth-4-face ((t (:foreground ,darktooth-delimiter-four))))
  `(rainbow-delimiters-depth-5-face ((t (:foreground ,darktooth-delimiter-one))))
  `(rainbow-delimiters-depth-6-face ((t (:foreground ,darktooth-delimiter-two))))
  `(rainbow-delimiters-depth-7-face ((t (:foreground ,darktooth-delimiter-three))))
  `(rainbow-delimiters-depth-8-face ((t (:foreground ,darktooth-delimiter-four))))
  `(rainbow-delimiters-depth-9-face ((t (:foreground ,darktooth-delimiter-one))))
  `(rainbow-delimiters-depth-10-face ((t (:foreground ,darktooth-delimiter-two))))
  `(rainbow-delimiters-depth-11-face ((t (:foreground ,darktooth-delimiter-three))))
  `(rainbow-delimiters-depth-12-face ((t (:foreground ,darktooth-delimiter-four))))
  `(rainbow-delimiters-unmatched-face ((t (:foreground ,darktooth-light0 :background nil))))

  ;; rainbow-identifiers
  `(rainbow-identifiers-identifier-1 ((t (:foreground ,darktooth-identifiers-1))))
  `(rainbow-identifiers-identifier-2 ((t (:foreground ,darktooth-identifiers-2))))
  `(rainbow-identifiers-identifier-3 ((t (:foreground ,darktooth-identifiers-3))))
  `(rainbow-identifiers-identifier-4 ((t (:foreground ,darktooth-identifiers-4))))
  `(rainbow-identifiers-identifier-5 ((t (:foreground ,darktooth-identifiers-5))))
  `(rainbow-identifiers-identifier-6 ((t (:foreground ,darktooth-identifiers-6))))
  `(rainbow-identifiers-identifier-7 ((t (:foreground ,darktooth-identifiers-7))))
  `(rainbow-identifiers-identifier-8 ((t (:foreground ,darktooth-identifiers-8))))
  `(rainbow-identifiers-identifier-9 ((t (:foreground ,darktooth-identifiers-9))))
  `(rainbow-identifiers-identifier-10 ((t (:foreground ,darktooth-identifiers-10))))
  `(rainbow-identifiers-identifier-11 ((t (:foreground ,darktooth-identifiers-11))))
  `(rainbow-identifiers-identifier-12 ((t (:foreground ,darktooth-identifiers-12))))
  `(rainbow-identifiers-identifier-13 ((t (:foreground ,darktooth-identifiers-13))))
  `(rainbow-identifiers-identifier-14 ((t (:foreground ,darktooth-identifiers-14))))
  `(rainbow-identifiers-identifier-15 ((t (:foreground ,darktooth-identifiers-15))))

  ;; RipGrep
  `(ripgrep-hit-face ((t (:inherit 'ag-hit-face))))
  `(ripgrep-match-face ((t (:inherit 'ag-match-face))))

  ;; sh mode
  `(sh-heredoc ((t (:foreground ,darktooth-darkslategray4 :background nil))))
  `(sh-quoted-exec ((t (:foreground ,darktooth-darkslategray4 :background nil))))

  ;; show-paren
  `(show-paren-match ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(show-paren-mismatch ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-red))))

  ;; smerge
  `(smerge-upper ((t (:background ,darktooth-mid-purple))))
  `(smerge-lower ((t (:background ,darktooth-mid-blue))))
  `(smerge-base ((t (:background ,darktooth-dark-yellow))))
  `(smerge-markers ((t (:background ,darktooth-dark0-soft))))
  `(smerge-refined-added ((t (:background ,darktooth-dark-green))))
  `(smerge-refined-removed ((t (:background ,darktooth-dark-red))))
  `(smerge-refine-changed ((t (:background nil :foreground nil))))

  ;; smart-mode-line
  `(sml/modes ((t (:foreground ,darktooth-light0-hard :weight bold :bold t))))
  `(sml/minor-modes ((t (:foreground ,darktooth-neutral-orange))))
  `(sml/filename ((t (:foreground ,darktooth-light0-hard :weight bold :bold t))))
  `(sml/prefix ((t (:foreground ,darktooth-neutral-blue))))
  `(sml/git ((t (:inherit 'sml/prefix))))
  `(sml/process ((t (:inherit 'sml/prefix))))
  `(sml/sudo ((t (:foreground ,darktooth-dark-orange :weight bold))))
  `(sml/read-only ((t (:foreground ,darktooth-neutral-blue))))
  `(sml/outside-modified ((t (:foreground ,darktooth-neutral-blue))))
  `(sml/modified ((t (:foreground ,darktooth-neutral-blue))))
  `(sml/vc ((t (:foreground ,darktooth-faded-green))))
  `(sml/vc-edited ((t (:foreground ,darktooth-bright-green))))
  `(sml/charging ((t (:foreground ,darktooth-faded-aqua))))
  `(sml/discharging ((t (:foreground ,darktooth-faded-aqua :weight bold))))
  `(sml/col-number ((t (:foreground ,darktooth-neutral-orange))))
  `(sml/position-percentage ((t (:foreground ,darktooth-faded-aqua))))

  ;; smartparens
  `(sp-pair-overlay-face ((t (:background ,darktooth-dark2))))
  `(sp-show-pair-match-face ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-blue))))
  `(sp-show-pair-mismatch-face ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-red))))

  ;; swiper
  `(swiper-line-face ((t (:underline t))))

  ;; swoop
  `(swoop-face-target-line ((t (:foreground ,darktooth-light0-hard :background ,darktooth-faded-blue))))
  `(swoop-face-target-words ((t (:foreground ,darktooth-light0 :background ,darktooth-faded-aqua))))
  `(swoop-face-line-buffer-name ((t (:foreground ,darktooth-light2 :background ,darktooth-dark1))))
  `(swoop-face-header-format-line ((t (:foreground ,darktooth-white :background ,darktooth-muted-blue :height 1.3 :weight bold))))
  `(swoop-face-line-number ((t (:foreground ,darktooth-neutral-orange))))

  ;; sx
  `(sx-question-list-answers ((t (:foreground ,darktooth-bright-green))))
  `(sx-question-mode-content-face ((t (:foreground ,darktooth-light2 :background ,darktooth-dark0-soft))))

  ;; table
  `(table-cell ((t (:inherit 'default))))

  ;; term
  `(term ((t (:inherit 'default))))
  `(term-color-black ((t (:foreground ,darktooth-dark0 :background ,darktooth-dark0))))
  `(term-color-blue ((t (:foreground ,darktooth-faded-blue :background ,darktooth-faded-blue))))
  `(term-color-cyan ((t (:foreground ,darktooth-faded-cyan :background ,darktooth-faded-cyan))))
  `(term-color-green ((t (:foreground ,darktooth-faded-green :background ,darktooth-faded-green))))
  `(term-color-magenta ((t (:foreground ,darktooth-faded-purple :background ,darktooth-faded-purple))))
  `(term-color-red ((t (:foreground ,darktooth-faded-red :background ,darktooth-faded-red))))
  `(term-color-white ((t (:foreground ,darktooth-light3 :background ,darktooth-light3))))
  `(term-color-yellow ((t (:foreground ,darktooth-faded-yellow :background ,darktooth-faded-yellow))))
  `(term-default-fg-color ((t (:foreground ,darktooth-light0))))
  `(term-default-bg-color ((t (:background ,darktooth-dark0))))

  ;; tldr
  `(tldr-command-itself ((t (:foreground ,darktooth-bright-red :bold t))))
  `(tldr-command-argument ((t (:foreground ,darktooth-bright-green :bold t))))
  `(tldr-code-block ((t (:foreground ,darktooth-bright-blue :bold t))))
  `(tldr-description ((t (:inherit 'default))))
  `(tldr-title ((t (:foreground ,darktooth-bright-red :bold t :height 1.2))))
  `(tldr-introduction ((t (:inherit 'font-lock-comment-face :slant italic))))

  ;; vline
  `(vline ((t (:background ,darktooth-dark-aqua))))
  `(vline-visual ((t (:background ,darktooth-dark-aqua))))

  ;; vterm
  `(vterm-color-black ((t (:inherit 'term-color-black :background "#686868"))))
  `(vterm-color-blue ((t (:inherit 'term-color-blue :background ,darktooth-bright-blue))))
  `(vterm-color-cyan ((t (:inherit 'term-color-cyan :background ,darktooth-bright-cyan))))
  `(vterm-color-green ((t (:inherit 'term-color-green :background ,darktooth-bright-green))))
  `(vterm-color-magenta ((t (:inherit 'term-color-magenta :background ,darktooth-bright-purple))))
  `(vterm-color-red ((t (:inherit 'term-color-red :background ,darktooth-bright-red))))
  `(vterm-color-white ((t (:inherit 'term-color-white :background ,darktooth-light0))))
  `(vterm-color-yellow ((t (:inherit 'term-color-yellow :background ,darktooth-bright-yellow))))

  ;; Web
  `(web-mode-doctype-face ((t (:foreground ,darktooth-light2 :weight bold))))
  `(web-mode-html-attr-name-face ((t (:inherit 'font-lock-variable-name-face))))
  `(web-mode-html-attr-equal-face ((t (:inherit 'default))))
  `(web-mode-html-tag-face ((t (:foreground ,darktooth-light3))))
  `(web-mode-html-tag-bracket-face ((t (:inherit 'default))))

  ;; which-key
  `(which-key-key-face ((t (:inherit 'font-lock-variable-name-face))))

  ;; which-func
  `(which-func ((t (:inherit 'font-lock-function-name-face))))

  ;; whitespace-mode
  `(whitespace-space ((t (:background ,darktooth-neutral-red))))
  `(whitespace-hspace ((t (:background ,darktooth-neutral-red))))
  `(whitespace-tab ((t (:background ,darktooth-neutral-red))))
  `(whitespace-newline ((t (:background ,darktooth-neutral-red))))
  `(whitespace-trailing ((t (:background ,darktooth-neutral-red))))
  `(whitespace-line ((t (:background ,darktooth-neutral-red))))
  `(whitespace-space-before-tab ((t (:background ,darktooth-neutral-red))))
  `(whitespace-indentation ((t (:background ,darktooth-neutral-red))))
  `(whitespace-empty ((t (:background ,darktooth-neutral-red))))
  `(whitespace-space-after-tab ((t (:background ,darktooth-neutral-red))))

  ;; woman
  `(woman-bold ((t (:foreground ,darktooth-sienna))))
  `(woman-italic ((t (:foreground ,darktooth-aquamarine4))))
  ))



;;; theme variables

(darktooth-with-color-variables
  (custom-theme-set-variables
   'darktooth
   ;; ansi-color
   `(ansi-color-names-vector [,darktooth-dark0-soft
                              ,darktooth-neutral-red ,darktooth-neutral-green ,darktooth-neutral-yellow
                              ,darktooth-neutral-blue ,darktooth-neutral-purple ,darktooth-neutral-cyan ,darktooth-light1])
   ;; pos-tip
   `(pos-tip-foreground-color ,darktooth-light0-hard)
   `(pos-tip-background-color ,darktooth-dark-aqua)
   ;; xterm-colors
   `(xterm-color-names [,darktooth-dark0
                        ,darktooth-faded-red ,darktooth-faded-green ,darktooth-faded-yellow
                        ,darktooth-faded-blue ,darktooth-faded-purple ,darktooth-faded-cyan ,darktooth-light3])
   `(xterm-color-names-bright ["#686868"
                               ,darktooth-bright-red ,darktooth-bright-green ,darktooth-bright-yellow
                               ,darktooth-bright-blue ,darktooth-bright-purple ,darktooth-bright-cyan ,darktooth-light0])
   ))


;;; Rainbow support
;;; Again, the following has been taken from zenburn theme for font-lock of the darktooth keywords.

(declare-function rainbow-mode 'rainbow-mode)
(declare-function rainbow-colorize-by-assoc 'rainbow-mode)

(defvar darktooth-add-font-lock-keywords nil
  "Whether to add font-lock keywords for darktooth color names.")

(defvar darktooth-colors-font-lock-keywords nil)

(defun darktooth--rainbow-turn-on ()
  "Maybe also add font-lock keywords for darktooth colors."
  (when (and (derived-mode-p 'emacs-lisp-mode)
             (or darktooth-add-font-lock-keywords
                 (and (buffer-file-name)
                      (equal (file-name-nondirectory (buffer-file-name))
                             "darktooth-theme.el"))))
    (unless darktooth-colors-font-lock-keywords
      (setq darktooth-colors-font-lock-keywords
            `((,(regexp-opt (mapcar 'car darktooth-default-colors-alist) 'words)
               (0 (rainbow-colorize-by-assoc darktooth-default-colors-alist))))))
    (font-lock-add-keywords nil darktooth-colors-font-lock-keywords 'end)))

(defun darktooth--rainbow-turn-off ()
  "Also remove font-lock keywords for darktooth colors."
  (font-lock-remove-keywords nil darktooth-colors-font-lock-keywords))

(when (fboundp 'advice-add)
  (advice-add 'rainbow-turn-on :after  #'darktooth--rainbow-turn-on)
  (advice-add 'rainbow-turn-off :after #'darktooth--rainbow-turn-off))


;;; Footer

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'darktooth)

;; Local Variables:
;; no-byte-compile: t
;; aggressive-indent-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:

;;; darktooth-theme.el ends here
