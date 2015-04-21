'use strict';

var emojis = require('emojis-keywords');

var emojiWord = function(word) {
  var firstChar = word.charAt(0),
      lastChar  = word.charAt(word.length - 1);

  if (firstChar === lastChar && firstChar === ':') {
    if (this && !this.shortcuts) return false;
    word = word.split(':')[1];
  } else if (this && !this.keywords) return false;

  return emojis.indexOf(word) > 0 ? true : false;
};

exports = module.exports = function() {
  if (typeof arguments[0] !== 'object') return emojiWord(arguments[0]);
  return emojiWord.bind(arguments[0]);
};
