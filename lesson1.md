# Default Flags

Put flags at the top of scripts to change the behavior of how your script works.

I've seen several get used for various reasons. . . but I'll just mention the most frequently used ones (I view them as defaults in my scripts).

```bash
set -e
```

This will make it so that the first failure exits the script.

```bash
# The most important line in every bash script.
set -e

do_some_process        # If that fails then just stop and don't try the next one!
do_some_other_process
```

```bash
set -u
```

If you don't instantiate a variable. . . then error out.

```bash
main() {
  local some_var; some_var=$1;   # We want this to error and tell us that its not bound properly.

  do_import_work some_var
}

main      # Forgot to send arguments :scream_cat:
```

```bash
set -o pipefail
```

If you are chaining commands and one fails. Just fail.

```bash
main() {
  some_fn_that_fails \   # If this one fails then stahp plz.
    | some_other_fn \
    | some_third_fn
}

main
```
