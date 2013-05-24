goog.provide 'App.AppController'

class App.AppController

  ###*
  * @constructor
  * @param {Object} scope
  * @param {$location} $location
  ###
  constructor: (@$scope, $location) ->

    ###*
    * Is given path current
    * @param {String} path
    ###
    $scope.isCurrent = (path) ->
      path == $location.path()

App.AppController.$inject = ['$scope', '$location']