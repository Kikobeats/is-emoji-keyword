should  = require 'should'

describe 'is emoji keyword ::', ->

  describe 'default configuration', ->
    it "emoji keyword", ->
      isEmoji = require('..')
      isEmoji('smile').should.be.equal(true)

    it "emoji shortcut", ->
      isEmoji = require('..')
      isEmoji(':smile:').should.be.equal(true)

    it 'word that doesnt exist', ->
      isEmoji = require('..')
      isEmoji(':turndownforwhat:').should.be.equal(false)

  describe 'custom configuration', ->

    it "disable emoji keywords", ->
      isEmojiCustom2 = require('..')({keywords: false})
      isEmojiCustom2('smile').should.be.equal(false)

    it "disable emoji shortcuts", ->
      isEmojiCustom = require('..')({shortcuts: false})
      isEmojiCustom(':smile:').should.be.equal(false)
