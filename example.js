
testModule = function(mod){ console.log(mod.isArray([])); }

/* creates a global 'need' function once required */
require('./')
/* then, you can "need" a module, by string name */
need("underscore")
testModule(underscore)

/* also, returns a local function, with same functionality as the global "need" */
n = require("./")
/* require with a hash, mapping your imported module (value) to any name (key) */
n({_:"underscore"})
testModule(_)

/* use your array, string or hash when requring, all your imports.. on one line! */
require('./')(["underscore"])
testModule(underscore)

/* RESULTS:

[need]	Requiring underscore, as underscore.
true
arguments are [object Object]
[need]	Requiring underscore, as _.
true
arguments are underscore
[need]	Requiring underscore, as underscore.
true

*/
