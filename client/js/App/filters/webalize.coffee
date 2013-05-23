goog.provide 'App.webalize'

App = App || {}

###*
 * Webalize filter
 * @use 'Hello World' | webalize	=>	'hello-world'
 * @copyright Jakub Vrána, http://php.vrana.cz/vytvoreni-pratelskeho-url.php
###
App.webalize = (s) ->
  nodiac =
    'á': 'a', 'č': 'c', 'ď': 'd', 'é': 'e', 'ě': 'e', 'í': 'i', 'ň': 'n', 'ó': 'o',
    'ř': 'r', 'š': 's', 'ť': 't', 'ú': 'u', 'ů': 'u', 'ý': 'y', 'ž': 'z'

  s = s.toLowerCase()
  s2 = ''
  for i in s
    s2 += if typeof nodiac[s.charAt i]? then nodiac[s.charAt i] else s.charAt i
  s2.replace(/[^a-z0-9_]+/g, '-').replace(/^-|-$/g, '')
