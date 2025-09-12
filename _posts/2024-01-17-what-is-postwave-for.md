---
title: What Is Postwave For?
date: 2024-01-17 22:57
tags: postwave, code
---

**Postwave is for people who want to build their own website...**

**And post things to that site...**

**And write those posts in Markdown.**

Postwave is great if you want your posts to fit seamlessly into a site you're building, rather than try to customize or theme a blog to turn into your site.

Authoring in Postwave centers around your terminal and your text editor. New posts are started with a `postwave post` command, which creates a new Markdown file for you to start writing. Because posts are written as Markdown files, so there's no need for a database.

After writing your posts in Markdown you can then display them however you'd like on your site through the built in Postwave Ruby client. This is where Postwave differs from static blog engines like [Jekyll](https://jekyllrb.com/) or [Hugo](https://gohugo.io/) which take the Markdown posts and generate a site for you.

With Postwave, once you've written your posts, it's up to you how you'd like to incorporate them into your site. For example, a page to display a post might look like this: 

```erb
<div id="post">
  <h2><%= @post.title %></h2>
  <div class="post-meta">
    <div class="post-date"><%= @post.date.strftime("%B %e, %Y") %></div>
    <div class="post-tags">
      <% @post.tags.each do |tag| %>
        <a href="/tags/<%= tag %>"><%= tag %></a>
      <% end %>
    </div>
  </div>
  <div class="post-content">
    <%= @post.body_html %>
  </div>
</div>
```

**Postwave is for writing posts for YOUR site.**
