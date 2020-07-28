# Hello world

Let's make a script from scratch.

Copy the below script into your clipboard.

```bash
#!/bin/bash

ls -lah .
cat $0
```

On Mac:

```bash
pbpaste > hello_world.bash
chmod +x hello_world.bash
./hello_world.bash
```

Let's unpack that a bit.

```bash
#!/bin/bash
```

The "#!" is a called a shebang. For a long time I couldn't remember which one came first. . . but just remember
ha[sh] bang (!) <- ! is commonly referred to as bang in a lot of languages. Hence like bang bang con and stuff.

```bash
ls -lah .
```

Check all file permissions. Note the x's on the left. . . the chmod command you used updated that.


```bash
cat $0
```

Read a file. The $0 is a nifty piece of syntax that means: "The path to the actual script file itself".

Try changing stuff if you want.
