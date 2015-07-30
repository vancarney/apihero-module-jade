fs   = require 'fs'
path = require 'path'
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
  
_app = null
  
setViewDir = (path)=>
  return unless _app?
  _app.set 'views', path
  fs.stat viewsPath, (e, stat)->
    if (e)
      console.log "views directory not found at #{viewsPath}. creating"
      fs.mkDir viewsPath, (e,res)->
        console.log e if e?
        
getViewDir = =>
  return null unless _app?
  _app.get 'views'

module.exports.setViewDir = setViewDir
module.exports.getViewDir = getViewDir

module.exports.init = (app, options, callback)-> 
  throw "apihero-module-jade::init - callback required" unless typeof (cB = arguments[arguments.length - 1]) is 'function'
  _app = app
  options = {} unless options? and typeof options is 'object'
  unless (viewsPath = if options.hasOwnProperty 'viewsPath' then options.viewsPath else app.get 'views')?
    setViewsDir path.join app_root, 'views'