
_ = require 'underscore'

n = undefined
hash = {__: 'underscore', nu: 'nodeunit'}
array = [ 'underscore', 'nodeunit' ]
string = 'underscore'
module.exports =
  setUp: (cb) ->
    n = undefined
    __ = undefined if __?
    nu = undefined if nu?
    underscore = undefined if underscore?
    nodeunit = undefined if nodeunit?
    cb()
  'should create "necessitate", a global function': (t) ->
    t.ok (not underscore? and not necessitate?), 'we should have neither'
    require('../')
    t.ok necessitate?, 'should make a global object'
    t.ok _.isFunction necessitate, 'it should be a function'
    x = necessitate 'underscore'
    t.ok x?, 'it should return your req'
    t.ok underscore
    t.done()
  'should export a function, by default': (t) ->
    t.doesNotThrow -> n = require('../')
    t.ok n?, 'requring indeed exports something'
    t.ok _.isFunction n, 'that something... is also a function'
    t.done()
  'can be loaded with a hash of requires, which requires, and return a function': (t) ->
    t.ok (not __?), '__ should not be defined'
    t.throws -> __.isArray []
    t.doesNotThrow -> n = require('../') hash
    t.ok n?, 'something is exported'
    t.ok _.isFunction(n), 'that something... is also a function'
    t.ok __?, 'that it actually required something'
    t.doesNotThrow -> __.isArray []
    t.done()
