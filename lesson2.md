# Hello world

Let's make a script from scratch.

Copy the below script into your clipboard.

```bash
#!/usr/bin/env bash

ls -lah .
cat $0
```

On Mac:

```bash
pbpaste > hello_world.bash
```

On Linux:

 - NOTE: need to have xclip installed

```bash
xclip -o > hello_world.bash
```

Next run:

```bash
chmod +x hello_world.bash
./hello_world.bash
```

Let's unpack that a bit.

### shebang

```bash
#!/usr/bin/env bash
```

The "#!" is a called a shebang. For a long time I couldn't remember which one came first. . . but just remember
ha[sh] bang (!) <- ! is commonly referred to as bang in a lot of languages. Hence like bang bang con and stuff.

This is a "magic" byte sequence that Linux like systems recognize and
know to look at the rest of the line and treat it as the path to a
binary file to run with the rest of the line as the command line
arguments.

The rest of the file is then read by that binary as the standard
input.

I.e. this is basically the same as running this command in the shell:

```bash
bash < hello_world.bash
```

### ls

```bash
ls -lah .
```

Check all file permissions. Note the x's on the left of the output. . . the chmod command you used updated that.

### cat

```bash
cat $0
```

Print out this file. The $0 is a nifty piece of syntax that means: "The path to the actual script file itself".

Try changing stuff if you want.
