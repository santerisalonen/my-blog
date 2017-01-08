slug         = require 'slug'
slug.defaults.modes['pretty']['lower'] = true 

module.exports = 
  access_token: process.env.access_token
  management_token: process.env.management_token
  space_id: process.env.space_id
  content_types:
    posts:
      id: "post"
      template: "views/_post.jade"
      write: "data.json"
      path: (entry) -> "blog/#{slug(entry.title)}"
      filters: { 
        "order": "-sys.createdAt"
      }
      

