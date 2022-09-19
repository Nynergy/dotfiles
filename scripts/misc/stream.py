#!/usr/bin/env python

from i3splat import *

ws = Workspace("stream", [
    (0.70, Container(TABBED, [
        (1, urxvt(wdir="~", command="echo 'Hello, stream!'")),
    ])),
    (0.30, Container(SPLITV, [
        (0.3, urxvt(wdir="~", command="lyra")),
        (0.7, urxvt(wdir="~/Documents/VimWiki/stream", command="stream_wiki.sh; vim `date '+%Y-%m-%d.wiki'`")),
    ]))
])

ws.launch()
