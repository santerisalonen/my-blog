axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'
marked       = require 'marked'
config       = require './contentful'
func         = require './func'
rootAddress  = 'https://ssalonen.netlify.com/';


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
  
  