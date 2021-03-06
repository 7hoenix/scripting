# How to read the manual.

```bash
man bash
```

> If you want to degender the man<ual> pages then add this line to
> your .bashrc: `alias docz=man`

This will display the manual pages for that entry in a utility called `less`.

To move up and down:
```less
j # down
k # up
gg <- top
G <- bottom
```

To search:
```less
/mysearchterm
n # next search term
N # backwards one search term
```

To exit:
```less
q
```

Go read the manual pages on bash flags once you understand this stuff.

> The Bash manual pages are extremely long and it took me a while to
> find it.

The section we are going to talk about is called `set` (set as in "setting flags" that you may set in scripts or in your environment).
Unfortunately, the word `set` is used a whole bunch in there too. . . so I found a way to get there quickly:
Search for: `set \[` and it should be the second search result you navigate to (Note that we get to escape the "[" or else it won't work).

Read through them but specifically pay attention to:

```bash
-e
-u
-o pipefail
```
