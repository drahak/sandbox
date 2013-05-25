goog.provide 'App.webalize'

nodiac = { 'á': 'a', 'č': 'c', 'ď': 'd', 'é': 'e', 'ě': 'e', 'í': 'i', 'ň': 'n', 'ó': 'o', 'ř': 'r', 'š': 's', 'ť': 't', 'ú': 'u', 'ů': 'u', 'ý': 'y', 'ž': 'z' }

###*
 * Webalize filter
 * @use 'Hello World' | webalize	=>	'hello-world'
 * @copyright Jakub Vrána, http://php.vrana.cz/vytvoreni-pratelskeho-url.php
###
App.webalize = (s) ->
  s = s.toLowerCase()
  s2 = ''
  for char, i in s
    if typeof nodiac[s.charAt(i)] != 'undefined'
      s2 += nodiac[s.charAt(i)]
    else
      s2 += s.charAt(i)
  s2.replace(/[^a-z0-9_]+/g, '-').replace(/^-|-$/g, '');