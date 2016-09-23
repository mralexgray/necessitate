<img src="logo.svg">

<!--@shields.flatSquare('travis','npm')-->
[![Build Status](https://img.shields.io/travis/mralexgray/necessitate/master.svg?style=flat-square)](https://travis-ci.org/mralexgray/necessitate) [![npm version](https://img.shields.io/npm/v/necessitate.svg?style=flat-square)](https://www.npmjs.com/package/necessitate)
<!--/@-->

<!--@h3([pkg.description])-->
### Easily require modules, even with custom names, using strings, arrays, or hashes.
<!--/@-->

<!--@example('./example.js')-->
creates a global 'need' function once required

```js
require('necessitate')
```

then, you can "need" a module, by string name

```js
necessitate("underscore")
//> [necessitate]	Requiring underscore, as underscore.
```

also, returns a local function, with same functionality as the global "need"

```js
n = require("necessitate")
```

require with a hash, mapping your imported module (value) to any name (key)

```js
n({_:"underscore"})
//> [necessitate]	Requiring underscore, as _.
```

use your array, string or hash when requring, all your imports.. on one line!

```js
require('necessitate')(["underscore"])
//> [necessitate]	Requiring underscore, as underscore.
```
<!--/@-->

<!--@installation()-->
## Installation

```sh
npm install --save necessitate
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

<!-- <link href="//fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet"> -->
<!-- <style>#logo { font-family: 'Reenie Beanie', cursive; }</style> -->
<!-- <span id="logo">necessitate</span> -->
<!--![Logo](http://www.corpuscoli.com/wp-content/uploads/2015/04/logo-need-design-news-corpuscoli-montalti.png)-->
