index = require './index'
experiments = require './experiments'

exports.route = (app) ->

  app.get '/', index.home
  app.get '/fan', experiments.fan
