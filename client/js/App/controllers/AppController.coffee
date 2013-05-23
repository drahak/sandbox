goog.provide 'App.AppController'

class App.AppController
  constructor: (@$scope, $location) ->

    ###*
    * Is given path current
    * @param {String} path
    ###
    $scope.isCurrent = (path) ->
      path == $location.path()

App.AppController.$inject = ['$scope', '$location']