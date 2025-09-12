---
title: How To Display Posts
date: 2025-03-13 11:16
tags: postwave, code
---

Now that you've [written some posts](../posts/how-to-write-posts) you can display them on your site by using Postwave's built in Ruby client.

**Start By Including the Client In Your Project**

```ruby
require 'postwave/client'
```

**Then Create a Postwave Client**

```ruby
postwave_client = Postwave::Client.new("path/to/config/postwave.yaml")
```

If you'd like to preload all the posts:

```ruby
postwave_client = Postwave::Client.new("path/to/config/postwave.yaml", preload: true)
```

**You Can Get a Single Post**

Pass in the stub (the filename without the date and '.md') for the post.

```ruby
post = postwave_client.post("my-great-post")

# <Postwave::Post title="My Great Post", date=<Time ...>, tags=["tag1"], body="bla bla bla">

puts post.title
# "My Great Post"
puts post.body
# "bla bla bla"
puts post.body_html # uses Redcarpt to convert body Markdown to HTML
# "<p>bla bla bla</p>"
puts post.body_preview(8) # an HTML free preview of the post with optional `limit` and `ellipsis` params
# "bla bla..." 
```

**Or Get a Collection of Posts**

This will give you a list of posts for displaying on a page.

You can also filter by tags and specify offsets and limits (useful for pagination).

```ruby
posts = postwave_client.posts

# [<Postwave::Post ...>, <Postwave::Post ...>, ...]

tagged_posts = postwave_client.posts(tag: "lizards")

page2_posts = postwave_client.posts(offset: 10, limit: 10)
```
Posts will be in reverse chronological order.


**Or Lots of Other Things!**

Check out the [documentation](https://github.com/dorkrawk/postwave?tab=readme-ov-file#displaying-posts) to learn about all the ways to use the Postwave client and check out the code for [this site](https://github.com/dorkrawk/postwave-site) to see how a full working blog is implemented with Postwave.
