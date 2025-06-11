# Tid: a simple TiddlyWiki autosaver

Tid is a simple tiddly wiki autosaver.

It is powered by [redbean](http://redbean.dev), a wonderful server that runs everywhere, blazing fast, as single file, and allow you to build apps with the same properties.

## Using tid

Download `tid.com`. Drag your wiki onto `tid.com`, then visit [http://localhost:5266](http://localhost:5266).

## Tweaking and extending

Run:

```bash
bin/redbean-3.0.0.com -i build.lua
```

which builds/zips `dist/tid.com`.
