goog.provide 'App.bootstrap'

goog.require 'goog.dom'
goog.require 'App'

###*
  * Application entry point
###
App.bootstrap = () ->
  rootElement = goog.dom.getDocument()

  angular.element(rootElement).ready () ->
    angular.bootstrap rootElement, ['App']
