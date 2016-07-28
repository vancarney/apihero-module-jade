{_}             = require 'lodash'
fs              = require 'fs'
path            = require 'path'
EventEmitter    = require 'events'
{should,expect} = require 'chai'
global._        = _
global.should   = should
global.expect   = expect
global.app_root = __dirname
should()

class MockApp extends EventEmitter
  getModuleConfigs: ->
      confog =
        setting: 'blah'

global.app =
  _views: './views'
  get: ->
    console.log "returning: #{@_views}"
    @_views
  set: (p)->
    console.log "setting: #{p}"
    @_views = p
  ApiHero: new MockApp
