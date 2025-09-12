---
title: How To Set Up Postwave
date: 2025-01-17 22:57
tags: postwave
---

To start using Postwave you first need to set it up within the project it will be a part of.

**Step 1: Install the gem**

```bash
> gem install postwave
```

**Step 2: Run postwave new**

```
> postwave new
```

Run this from the root directory of your project. As a part of this set up you will be asked for a few things: 

```
- name: the name of the blog
- url: the base url of the site (e.g. `https://yoursite.com` )
- posts path: the subdirectory on the site that your posts will be in (e.g. `posts` on this site )
- description: a description of the blog
```

One of the main areas this information will be used in is RSS feed generation.

When completed this command will create a `postwave.yaml` config file in the current directory and a `/_posts/` directory. This is where you will write your posts.

Here is the directory structure that will be created:

```
|- _posts/
|  |- meta/
|     |- tags/
|     |- index.csv
|     |- summary.yaml
postwave.yaml
```

`_posts/`: This is where you write all your posts in Markdown

`_posts/meta/tags/`: This will contain files for every tag your define in your posts

`_posts/meta/index.csv`: This will contain an ordered list of all the posts

`_posts/meta/summary.yaml`: This file will contain some summary information about the posts. Total count, etc.

`postwave.yaml`: The config file for Postwave.

**Step 3: Update Your Configs**

If you don't have the information at the time of set up or need to change anything you can always update the `postwave.yaml` file.



Great! Now you're ready to start [writing posts](../posts/how-to-write-posts)!


