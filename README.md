# Postwave Example Blog

This is an blog built with [Sinatra](https://sinatrarb.com/) to show you how to use [Postwave](https://github.com/dorkrawk/postwave). You can use these same techniques to build on top of any other framework or custom codebase.

For this site, I set up a basic Sinatra application, then ran `postwave new` to set up a Postwave blog in the project. From there I implemented all the blog functionality (index, post display, tags, archives, RSS, etc.) in about 100 lines of code (plus the templates to display everything).

To write new a new just run `postwave post`, write the content in the new Markdown file that was generated, then run `postwave build` to rebuild the blog with the new post in it.

Feel free to just [fork](https://github.com/dorkrawk/postwave-site/fork) this project and use it as a starting point for your own Postwave-powered site!

To run it locally:
`ruby app.rb`
