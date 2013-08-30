goog.provide 'App.AppController'

###*
  * Application controller
  * @author Drahomír Hanák
###
App.AppController = (@$scope, $location) ->

    ###*
    * Is given path current
    * @param {String} path
    ###
    $scope.isCurrent = (path) ->
      path == $location.path()

App.AppController.$inject = ['$scope', '$location']
