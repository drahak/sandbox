goog.provide 'App.bootstrap'

goog.require 'goog.dom'
goog.require 'App'
goog.require 'App.AppController'
goog.require 'App.LibrariesController'

###*
  * Application entry point
###
App.bootstrap = () ->
  rootElement = goog.dom.getDocument()
  angular.element(rootElement).ready () ->
    angular.bootstrap rootElement, ['App']
