# is-emoji-keyword

[![Greenkeeper badge](https://badges.greenkeeper.io/Kikobeats/is-emoji-keyword.svg)](https://greenkeeper.io/)

[![Build Status](http://img.shields.io/travis/Kikobeats/is-emoji-keyword/master.svg?style=flat-square)](https://travis-ci.org/Kikobeats/is-emoji-keyword)
[![Dependency status](http://img.shields.io/david/Kikobeats/is-emoji-keyword.svg?style=flat-square)](https://david-dm.org/Kikobeats/is-emoji-keyword)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/is-emoji-keyword.svg?style=flat-square)](https://david-dm.org/Kikobeats/is-emoji-keyword#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/is-emoji-keyword.svg?style=flat-square)](https://www.npmjs.org/package/is-emoji-keyword)
[![Gittip](http://img.shields.io/gittip/Kikobeats.svg?style=flat-square)](https://www.gittip.com/Kikobeats/)

> Check if a word is a emoji shortcut.

## Install

```bash
npm install is-emoji-keyword --save
```

If you want to use in the browser (powered by [Browserify](http://browserify.org/)):

```bash
bower install is-emoji-keyword --save
```

and later link in your HTML:

```html
<script src="bower_components/is-emoji-keyword/dist/is-emoji-keyword.js"></script>
```

## Usage

```js
var isEmoji = require('is-emoji-keyword');

isEmoji('smile');   // => true
isEmoji(':smile:'); // => true
```

You can provide custom options when you require the package for specify how to determine if a word is an emoji:

```js
var isEmoji = require('is-emoji-keyword')({keywords: false, shortcuts: true});

isEmoji('smile');   // => false
isEmoji(':smile:'); // => true
```

`options` can be:

* keywords: words without `:`. By default the value is `true`.
* shortcuts: words betwen `:`. By default the value is `true`.

## Related

* [emojis-list](https://github.com/Kikobeats/emojis-list) – Complete list of standard emojis.
* [emojis-keywords](https://github.com/Kikobeats/emojis-keywords) – Complete list of am emoji shortcuts.
* [emojis-unicode](https://github.com/Kikobeats/emojis-unicode) – Complete list of standard Unicode codes that represent emojis.
* [is-standard-emoji](https://github.com/kikobeats/is-standard-emoji) – Simply way to check if a emoji is a standard emoji. 
* [trim-emoji](https://github.com/Kikobeats/trim-emoji) – Deletes ':' from the begin and the end of an emoji shortcut.

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
