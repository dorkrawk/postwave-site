---
title: Postwave 0.1.5 Released
date: 2026-01-21 12:30
tags:
---

Postwave 0.1.5 has just been released with a few updates and a new `frozen_slug` feature.

### Frozen Slugs

When you run `postwave build` your post filenames (which control the post slugs) get updated based on the title.  If you would like to use a slug that is not related to the post title you can now include a `frozen_slug: use-this-slug` field in the post header.

For example:

```
title: A New Title!
date: 2022-01-01
tags:
frozen_slug: keep-this-slug
```
The filename will remain `2022-01-01-keep-this-slug.md` after running `postwave build` (rather than updating to `2022-01-01-a-new-title.md`).  Note that the date part of the filename still comes from the `date` field.

### Other Updates

- An error is thrown during the `build` process if the post title is blank.
- A `.tags` file is created in new blogs in the `/_posts/meta/tags` directory so that this directory is picked up by Git even when you don't have any tags. If this is causing an issue in existing blogs, just add an empty `.tags` file to that directory.



This blog was just upgraded to use version 0.1.5 and [you can too](https://rubygems.org/gems/postwave)!
