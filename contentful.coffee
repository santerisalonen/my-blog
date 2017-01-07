module.exports = 
  access_token: process.env.access_token
  management_token: process.env.management_token
  space_id: process.env.space_id
  content_types:
    posts:
       id: 'post'
       template: 'views/_post.jade'
       path: (entry) -> "blog/#{entry.slug}"
	#   filters: {}                   	# passes filters to the call to contentful's API, see contentful's docs for more info
