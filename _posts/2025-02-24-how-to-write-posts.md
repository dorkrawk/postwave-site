---
title: How To Write Posts
date: 2025-02-24 12:43
tags: postwave
---

Ok, you have Postwave [set up](../posts/how-to-set-up-postwave) in your project and now you want to start writing!

**Step 1: Run postwave post**

```
> postwave post
```

Run this command in your terminal (from within your Postwave project's directory).

This will generate at new Markdown file in the `_posts/` directory. The title is set to a random string of characters.  The filename will be the current timestamp.  This will eventually be overwritten by the `build` command, so don't worry too much about it. The file will have a general structure like this:

```markdown
---
title: FNJEXWZP
date: 2025-01-01
tags:
---

Start writing!
```
Tags should be comma separated(`tag1, tag2, multiword tags work, tag3`).

You can keep a post in "draft" status (meaning it won't get processed or added to the index) by adding `draft: true` to the top section of the post.

```markdown
---
title: This Post Isn't Quite Ready
date: 2025-01-01
tags:
draft: true
---
```

**Step 2: Write your post!**

Now for the good part! You can actually write your post!

Just leave the post metadata information alone and get to work on your brilliant prose.

**Step 3: Build the Blog**

```
> postwave build
```

This will "build" the blog. Do this after you've finished writing and you're ready to publish. This involves:

- regenerating the `/meta/index.csv` file
- generating slugs for each posts based on the post title and ensuring that there are no duplicate slugs
- changing the post file names to match `yyyy-dd-mm-slug.md`
- updating the `/meta/summary.yaml`
- creating and updating tag files (which will be `/tags/[tag-name].yaml` files for each tag)
- updating the `/meta/rss` file to create a feed for your posts

Now you're ready to [display your posts](../posts/how-to-display-posts).
