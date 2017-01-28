# set up contentful config as environment variables (in dev)
try 
  env = require './env' 
  process.env.access_token = env.access_token
  process.env.space_id = env.space_id
catch err



axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'
marked       = require 'marked'
config       = require './contentful'
func         = require './func'
rootAddress  = 'http://localhost:1111/';


module.exports =
  ignores: [
    'readme.md', '**/layout.*', '**/_*', '.gitignore', 'contentful.coffee',
    'Makefile', 'ship*', "env.coffee", "func.coffee"
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]

  locals:
    marked: marked
    func: func
    rootAddress: rootAddress

  extensions: [ contentful(config) ]
