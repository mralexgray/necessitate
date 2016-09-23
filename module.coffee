
globalname = 'necessitate'
_ = require 'underscore'

# Private utility function that does the actual work.

perform = (name, modulename)	->
	console.log "[#{globalname}]\tRequiring #{modulename}, as #{name}."
	global[name] = require modulename

necessitate = (x) ->

	if _.isString(x)
		perform x, x
	else if _.isArray(x)
		perform name, name for name in x
	else perform name, mod.replace('@',name) for name, mod of x

`global[globalname] = necessitate`

module.exports = ->

	necessitate arguments[0] if arguments.length == 1 # not _.isEmpty(x)
	necessitate
