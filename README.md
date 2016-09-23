![Logo](http://www.corpuscoli.com/wp-content/uploads/2015/04/logo-need-design-news-corpuscoli-montalti.png)

<!--@h1([pkg.name])-->
# need
<!--/@-->
<!--@shields.flatSquare('travis','npm')-->
[![Build Status](https://img.shields.io/travis/mralexgray/need/master.svg?style=flat-square)](https://travis-ci.org/mralexgray/need) [![npm version](https://img.shields.io/npm/v/need.svg?style=flat-square)](https://www.npmjs.com/package/need)
<!--/@-->

<!--@h3([pkg.description])-->
### Easily require modules, even with custom names, using strings, arrays, or hashes.
<!--/@-->

<!--@example('./example.js')-->
creates a global 'need' function once required

```js
require('need')
```

then, you can "need" a module, by string name

```js
need("underscore")
//> [need]	Requiring underscore, as underscore.
```

also, returns a local function, with same functionality as the global "need"

```js
n = require("need")
```

require with a hash, mapping your imported module (value) to any name (key)

```js
n({_:"underscore"})
//> [need]	Requiring underscore, as _.
```

use your array, string or hash when requring, all your imports.. on one line!

```js
require('need')(["underscore"])
//> [need]	Requiring underscore, as underscore.
```
<!--/@-->

<!--@installation()-->
## Installation

```sh
npm install --save need
```
<!--/@-->

## Testing

```sh
npm test
```
<!--@dependencies()-->
## <a name="dependencies">Dependencies</a>

- [coffee-script](https://github.com/jashkenas/coffeescript): Unfancy JavaScript
- [underscore](https://github.com/jashkenas/underscore): JavaScript's functional programming helper library.

<!--/@-->
