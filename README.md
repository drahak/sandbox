AngularJS frontend sandbox ![dependencies](https://david-dm.org/drahak/sandbox.png) ![dependencies](https://david-dm.org/drahak/sandbox/dev-status.png)
==================================
This repository is being developed.

Requirements
------------
Actually you will only need to download [Node.js](http://nodejs.org/). NodeJS provides npm (Node Package Manager) which handles all dependencies. The project depends on these libraries/tools:

- [Node.js (and its NPM)](http://nodejs.org/)
- [Bower](https://github.com/bower/bower) - needs to be isntalled by executing: `npm install -g bower`
- [AngularJS](http://angularjs.org/) - javascript framework which provides great implementation of DI, MVC, templating system and so on (downloaded using Bower)
- [Google Closure](https://developers.google.com/closure/) - JavaScript framework by Google, see also [Google Closure Cheatsheet](http://www.closurecheatsheet.com/) (downloaded using Bower)
- [Jasmine](http://pivotal.github.io/jasmine/) - realy awesome and easy-to-use behaviour driven development testing framework for JavaScript (downloaded by NPM)
- [Karma](http://karma-runner.github.io/) - Jasmine (or whatever) test runner (downloaded using NPM)
- [Grunt](http://pivotal.github.io/jasmine/) - JavaScript task runner (e.g. for build dependencies, compile LESS or Coffee scripts) (downloaded using NPM with all tasks)
- [CoffeeScript](http://coffeescript.org/) - JavaScript syntax is not much pretty. That's why it's better to use something like CoffeeScript (see grunt task `coffe:app` in `Gruntfile.coffee`)

Installation
------------
Even project depends on these libraries/tools it's actually very simple to install it. If you alreadt have installed NodeJS go to the command line to project root and execute following commands:

	npm install --safe-dev & bower install --dev

Or execute `scripts/install.(bat|sh)` script. That's all :)

