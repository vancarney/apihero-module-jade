jade = require 'jade'

module.exports.jade = jade

# module.exports.compile = (source, options)->
  # jade.compile source, options
#   
# module.exports.compileFile = (path, options)->
  # jade.compileFile path, options
#   
# module.exports.compileClient = (source, options)->
  # jade.compileClient source, options
#   
# module.exports.compileClientWithDependenciesTracked = (source, options)->
  # jade.compileClientWithDependenciesTracked source, options
#   
# module.exports.render = (source, options)->
  # jade.render source, options
#   
# module.exports.renderFile = (source, options)->
  # jade.renderFile source, options

module.exports.init = (app, options, callback)->
  callback null