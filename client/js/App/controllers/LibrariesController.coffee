goog.provide 'App.LibrariesController'

goog.require 'App'

class App.LibrariesController
  constructor: (@$scope) ->
    $scope.libraries = [
      {
        shortName: 'angular'
        name: 'AngularJS'
        description: 'Modern MVW framework for fast and easy JavaScript application development'
        type: 'library'
      }, {
        shortName: 'coffee'
        name: 'CoffeeScript'
        description: 'For pretty and fast javascript code sytnax. Compiled to JavaScript with Grunt.'
        type: 'language'
      }, {
        shortName: 'grunt'
        name: 'Grunt'
        description: 'Awesome tool to build application or watch coffee scripts, less files and so on to compile them'
        type: 'tool'
      }, {
        shortName: 'jasmine'
        name: 'Jasmine BDD'
        description: 'Great BDD testing framework for unit or end-to-end testing your code. Works well with KarmaJS (runner)'
        type: 'library'
      }, {
        shortName: 'node'
        name: 'NodeJS'
        description: 'Run (not only) grunt, download its dependencies and modules in the easist way'
        type: 'tool'
      }, {
        shortName: 'gclosure'
        name: 'Google Closure'
        description: 'Google Closure is most prepared JavaScript framework to use in production. Contains lots of functionality'
        type: 'library'
      }
    ]

App.LibrariesController.$inject = ['$scope']

App.module.controller 'Libraries', App.LibrariesController