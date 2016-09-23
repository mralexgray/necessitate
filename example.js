
//! creates a global 'need' function once required
require('./')
//! then, you can "need" a module, by string name
necessitate("underscore")

//! also, returns a local function, with same functionality as the global "need"
n = require("./")
//! require with a hash, mapping your imported module (value) to any name (key)
n({_:"underscore"})

//! use your array, string or hash when requring, all your imports.. on one line!
require('./')(["underscore"])
