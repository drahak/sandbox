basePath = '../../'

files = [
  JASMINE,
  JASMINE_ADAPTER,
  { pattern:'bower_components/angular/angular.js', included: true },
  { pattern:'bower_components/angular-bootstrap/ui-bootstrap.js', included: true },
  { pattern:'bower_components/angular-bootstrap/ui-bootstrap-tpls.js', included: true },
  { pattern:'bower_components/angular-mocks/angular-mocks.js', included: true },
  { pattern:'client/build/deps.js', included: true },
  { pattern:'client/js/**/*.js', included: false },
  { pattern:'tests/unit/**/*.js', included: true }
]

autoWatch = true

browsers = ['Chrome']

exclude = []

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
}