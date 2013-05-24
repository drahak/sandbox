goog.provide 'App'

goog.require 'App.AppController'
goog.require 'App.LibrariesController'
goog.require 'App.webalize'

module = angular.module 'App', []
module.controller 'App', App.AppController
module.controller 'Libraries', App.LibrariesController

module.filter 'webalize', () -> App.webalize

module.config ($locationProvider, $routeProvider) ->
  $routeProvider.when '/',
    templateUrl: 'js/App/views/about.html'
  $routeProvider.when '/libraries',
    templateUrl: 'js/App/views/libraries.html'
    controller: 'Libraries'

  $locationProvider.html5Mode(true)
