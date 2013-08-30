goog.provide 'App'

goog.require 'App.AppController'
goog.require 'App.LibrariesController'
goog.require 'App.webalize'

# Module
App.module = angular.module 'App', []

# Controllers
App.module.controller 'App', App.AppController
App.module.controller 'Libraries', App.LibrariesController

# Filters
App.module.filter 'webalize', -> App.webalize

# Configuration
App.module.config ($locationProvider, $routeProvider) ->
  $routeProvider.when '/',
    templateUrl: 'js/App/views/about.html'
  $routeProvider.when '/libraries',
    templateUrl: 'js/App/views/libraries.html'
    controller: 'Libraries'

  $locationProvider.html5Mode(true)
