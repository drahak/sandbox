@basePath = '../'

@files = [
  @JASMINE
  @JASMINE_ADAPTER
  {pattern: 'bower_components/closure-library/closure/goog/base.js', watched: false, included: true, served: true}
  {pattern: 'bower_components/closure-library/closure/goog/deps.js', watched: false, included: true, served: true}
  {pattern: 'bower_components/angular/angular.js', included: true}
  {pattern: 'bower_components/angular-mocks/angular-mocks.js', included: true}
  {pattern: 'client/build/deps.js', watched: true, included: true, served: true}
  {pattern: 'client/js/**/*.js', watched: true, included: false, served: true}
  {pattern: 'tests/unit/**/*Spec.js', watched: true, included: true, served: true}
]

@autoWatch = true

@browsers = ['Chrome']