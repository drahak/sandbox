goog.provide 'App'

App.module = angular.module 'App', []
App.module.config ($locationProvider, $routeProvider) ->
  $routeProvider.when '/',
    templateUrl: 'js/App/views/about.html'
  $routeProvider.when '/libraries',
    templateUrl: 'js/App/views/libraries.html'
    controller: 'Libraries'

  $locationProvider.html5Mode(true)
