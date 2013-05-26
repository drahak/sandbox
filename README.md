AngularJS frontend sandbox ![dependencies](https://david-dm.org/drahak/sandbox.png) ![dependencies](https://david-dm.org/drahak/sandbox/dev-status.png)
==================================
This repository is being developed.

#### Content table
- [Requirements](#requirements)
- [Grunt](#grunt)
- [Tests](#tests)

Requirements
------------
Actually you will only need to download [Node.js](http://nodejs.org/). NodeJS provides npm (Node Package Manager) which handles all dependencies. The project depends on these libraries/tools:

- [Node.js (and its NPM)](http://nodejs.org/)
- [Bower](https://github.com/bower/bower) - needs to be isntalled by executing: `npm install -g bower`
- [AngularJS](http://angularjs.org/) - provides great implementation of DI, MVC, templating system and so on (downloaded using Bower)
- [Google Closure](https://developers.google.com/closure/) - JavaScript framework by Google, see also [Google Closure Cheatsheet](http://www.closurecheatsheet.com/) (downloaded using Bower)
- [Jasmine](http://pivotal.github.io/jasmine/) - realy awesome and easy-to-use BDD testing framework (downloaded by NPM)
- [Karma](http://karma-runner.github.io/) - Jasmine (or whatever) test runner (downloaded using NPM)
- [Grunt](http://pivotal.github.io/jasmine/) - JavaScript task runner (e.g. for compile LESS or Coffee scripts) (downloaded using NPM with all tasks)
- [CoffeeScript](http://coffeescript.org/) - JavaScript syntax is not much pretty. That's why it's better to use something like CoffeeScript (see grunt task `coffe:app` in `Gruntfile.coffee`)

Installation
------------
Even project depends on these libraries/tools it's actually very simple to install it. If you alreadt have installed NodeJS go to the command line to project root and execute following commands:h

	npm install --safe-dev & bower install --dev

Or execute `scripts/install.(bat|sh)` script.

Grunt
-----
Handles almost everything :) There are a few predefined grunt tasks in `Gruntfile.coffee` to compile LESS, CoffeeScript, build Closure application or watch files for change and execute some tasks.

### CoffeeScript
To compile your CoffeeScript files (by default: `client/js/**/*.coffee` and `tests/**/*.coffee`) use grunt task `coffee:app`. This task compiles all these `*.coffee` files to `*.js` with map. You can also use `watch:coffee` task to watch all these CoffeeScript and compile them automatically.

	grunt coffee:app
	grunt watch:coffee

### LESS
To compile LESS file import it to the `client/css/compile.less` file. Then the grunt task `less:app` will compile `client/css/compile.less` into `client/build/app.css` with all imported LESS included. There is also watch task `watch:less`

	grunt less:app
	grunt watch:less

### Google Closure
Grunt can build dependencies or whole app for you. task `closureDepsWriter:app` writes dependencies into `client/build/deps.js`, `closureBuilder:app` task builds application into `client/build/app.js`

	grunt closureDepsWriter:app
	grunt closureBuilder:app


### Default Grunt task
There is also default grunt task which runs `less:app`, `closureBuilder:app`, `closureDepsWriter:app` and starts watcher `watch:less`. To to so, just run `grunt` from project root.

	grunt

Tests
=====
Tests are very important for development of every single application. I use JasmineBDD to test my code and Karma test runner to run my unit and e2e tests. If you want you can use any other testing framework (e.g. mocha). It's not a problem to use it with Karma test runner.

### Unit tests
Unit tests configuration is in `config/karma-unit.coffee` file. Default setting executes all `tests/unit/**/*Spec.js`. Note the .js extension. If you want to run tests, both unit tests configuration file and test files must be compiled into JavaScript (e.g. using Grunt `coffee:app` task). To run tests with karma execute one of following commands:

	karma start config/karma-unit.js

Which is pretty same as:

	scripts/karma-unit.(bat|sh)

All tests are executed everytime you change any file in project (test or coffee file).

### End-to-emd tests
Are also very important to check if all application functions are accessible. There isn't set auto watch mode by default, but you can change it in `config/karma-e2e.coffee` file. Tests are located in `tests/e2e/**/*.js`. Again compile all coffee scripts before you run tests. To do so use `coffee:app` and then:

	karma start config/karma-e2e.js

Or execute batch or shell script:

	scripts/karma-e2e.(bat|sh)