axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'
config       = require './contentful'
marked       = require 'marked'
rootAddress  = 'https://www.production.com/';


module.exports =
  ignores: [
    'readme.md', '**/layout.*', '**/_*', '.gitignore', 'contentful.coffee',
    'Makefile', 'ship*', "env.coffee"
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]

  locals:
    marked: marked
    func: func
    rootAddress: rootAddress

  extensions: [contentful(config)]
  
  