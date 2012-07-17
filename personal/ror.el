(defun ror-viewer-i18n (str scope)
  "Insert i18n trans: <%= 'str'.t(:scope => 'scope' ) %>"
  (interactive "sTrans String: \nsScope:")
  (insert "<%= '" str "'.t(:scope=>'" scope "') %>"))

(defun ror-link-to-with-image (str show-text img title)
  "Insert code : <%= link_to image_tag(\"#{$asset_host}/images\"), \"str\", :title => \"title\" %>"
  (interactive "sLink URL: \nsShow Text: \nsImage Path: \nsTitle: ")
  (if (> (length img) 0)
      (insert "<%= link_to image_tag(\"" img "\")")
    (insert "<%= link_to \"" show-text "\""))
  (save-excursion
    (insert ", \"" str "\"")
    (if (> (length title) 0)
        (insert ", :title => \"" title "\"")
      ())
    (insert " %>")))

(defun ror-ga-email (str)
  "ror ga email url"
  (interactive "sType(1 common;):")
  (insert "<%= ga_email_tracing_url \"")
  (save-excursion
    (insert "\", " str " %>")))
