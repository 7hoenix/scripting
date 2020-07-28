# Your turn

Now its time for you to automate something.

To start, peruse the `scripts` directory to get inspiration for the kinds of things that you can do.

If nothing pops out at you then here's some additional ideas:

- Look at the `fmt-haskell.bash` script and write a similar one for the programming language that you
are focusing on currently (I love opiniated formatters as it removes layers of miss-communication potential on a team).
- Work on automating your computer setup.
- Work on automating the setup of your project (so that other contributors can just run a script to get going).

## Important

Remember that in order for you to be able to execute your script you will get to `chmod +x it`.

To check file permissions (to make sure that you do have execute permissions) run:

```bash
ls -lah
```

## Quick Start

You may also use the provided template:

```bash
cp scripts/_TEMPLATE.bash some_script.bash
chmod +x some_script.bash
./some_script.bash # Should output a message when run.
```

## Show us what you got

Consider opening a PR to merge it into the scripts directory here.

## Keep going

This is a skill that can have a multiplicative effect (kind of like vim) on your productivity output.

ABA - Always Be Automating.
