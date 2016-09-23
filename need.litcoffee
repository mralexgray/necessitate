### need ###
------------
# when you require, too much

	_ = require 'underscore'

Private utility function that does the actual work.

	perform = (name, modulename)	->
		console.log "[need]\tRequiring #{modulename}, as #{name}."
		global[name] = require modulename

	needfn = (x) ->
		# console.log "things are #{typeof things}"
		if _.isString(x)
			perform x,x
		else if _.isArray(x)
			perform(name, name) for name in x
		else if _.isObject(x)
			perform(name, mod.replace('@',name)) for name, mod of x
		else
			console.log "you cant have a #{typeof x} #{x}"

	`global.need = needfn`

	module.exports = ->


		if arguments.length == 1
			console.log "arguments are #{arguments[0]}"
		# not _.isEmpty(x)
			needfn arguments[0]
		needfn
