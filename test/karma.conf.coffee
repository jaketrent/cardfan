path = require 'path'

module.exports = (config) ->
  isTest = process.env.NODE_ENV is 'test'
  bowerPath = path.join 'app', 'static', 'js', 'components'

  config.set
    basePath: './..'

    frameworks: [ 'jasmine' ]

    files: [
      # vendor
      path.join bowerPath, 'jquery/jquery.js'
      path.join bowerPath, 'underscore/underscore.js'

      # source
      'app/static/js/**/*.coffee'

      # test helpers
      'node_modules/chai/chai.js'
      'node_modules/sinon/pkg/sinon.js'
      'node_modules/sinon-chai/lib/sinon-chai.js'

      # tests
      'test/specs/**/*.spec.coffee'
    ]

    exclude: []

    preprocessors:
      '**/*.coffee.erb': ['coffee']
      '**/*.coffee': ['coffee']

    reporters: if isTest then ['spec'] else ['progress']

    port: 8080

    runnerPort: 9100

    colors: true

    captureTimeout: 5000

    autoWatch: not isTest

    singleRun: isTest

    browsers: if isTest then ['PhantomJS'] else ['Chrome']
