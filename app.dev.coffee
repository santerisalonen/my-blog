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
config       = require './contentful'
marked       = require 'marked'


module.exports =
  ignores: [
    'readme.md', '**/layout.*', '**/_*', '.gitignore', 'contentful.coffee',
    'Makefile', 'ship*', ""
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]

  locals:
    marked: marked

  extensions: [contentful(config)]