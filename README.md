# Tid: a simple TiddlyWiki autosaver

Tid is a simple TiddlyWiki autosaver. It should work out of the box on every system with a web browser (untested but Windows works fine), nothing else required.

## Using tid

Download `tid.com` from "Releases" and click to run.

By default, Tid edits a wiki named `wiki.html` in its folder and will open a tab in your web browser. To edit a wiki in another location, just drag it onto `tid.com` to "Open with `tid.com`".

Alternatively, after downloading `tid.com`, run in the shell of your choice:

```bash
tid.com your_wiki.html
```

where `your_wiki.html` is your wiki's filename. If the first method doesn't work, this will neither, but at least you'll see the error messages.

## How does it work?

Tid is powered by [redbean](http://redbean.dev), a wonderful server that runs everywhere unmodified, blazing fast, as a single file, and allow you to build apps with the same properties.

Basically, Tiddlywiki can autosave itself if it's served on a WebDAV server, so Tid implements just enough of WebDAV to convince Tiddlywiki to hand its data over. Read [index.lua](src/index.lua), it's literally 20 lines of lua code.

For more details, see [this blog post](https://rpdillon.net/redbean-tiddlywiki-saver.html) where I got most of my code from.

## Tweaking and extending

Run:

```bash
bin/redbean-3.0.0.com -i build.lua
```

which bundles all necessary files from `src` into a copy of `bin/redbean-3.0.0.com` to create `dist/tid.com`.

## Caveats

This is very much a hack, so caveats abound! That said, I've been using it for a couple of days and it works perfect, so I'm sure it won't trash your wiki or something.

When in doubt, don't hesitate to see the code for yourself. Or better yet, change it and open a pull request.

## Credits

Credits to [tiddly-bean](https://github.com/amreus/tiddly-bean), [Rick Dillon](https://rpdillon.net/redbean-tiddlywiki-saver.html), [coderofsalvation](https://talk.tiddlywiki.org/t/hi-thanks-for-tiddlywiki-redbean-server-implementation/4110) for inspirations, and of course [Justine Tunney](https://justine.lol/) for the awesome Redbean server.
