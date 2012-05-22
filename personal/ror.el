(defun ror-viewer-i18n (str scope)
  "Insert i18n trans: <%= 'str'.t(:scope => 'scope' ) %>"
  (interactive "sTrans String: \nsScope:")
  (insert "<%= '" str "'.t(:scope=>'" scope "') %>"))
