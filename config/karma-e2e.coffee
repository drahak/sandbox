@basePath = '../'

@frameworks = ['ng-scenario']

@files = [
  'tests/e2e/**/*.js'
]

@autoWatch = true

@singleRun = false

@browsers = ['Chrome']

@urlRoot = '/__karma/'

@proxies =
  '/': 'http://localhost:80/'

@plugins = [
  'karma-ng-scenario'
  'karma-chrome-launcher'
  # 'karma-firefox-launcher' # uncomment if you want to run text in firefox. Run command: npm i karma-firefox-launcher
]