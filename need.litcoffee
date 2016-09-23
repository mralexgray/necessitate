### need ###
------------
# when you require, too much

	_ = require 'underscore'

Private utility function that does the actual work.

	perform = (name, modulename)	->
		console.log "[need]\tRequiring #{modulename}, as #{name}."
		global[name] = require modulename

	module.exports = ->
		# console.log "arguments are #{arguments.length}"

		needfn = global['need'] = (x) ->
			# console.log "things are #{typeof things}"
			if _.isString x
				perform x,x
			else if _.isArray x
				perform(name, name) for name in x
			else if _.isObject arguments
				perform(name, mod.replace('@',name)) for name, mod of x
			else
				console.log "you cant have a #{typeof x} #{x}"

		needfn arguments[0] if arguments.length == 1
		needfn
