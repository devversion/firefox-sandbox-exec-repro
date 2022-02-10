# firefox-sandbox-exec-repro

## Reproduction:

1. Update the sandbox profile to point to the directory where you cloned this repo into!
2. Run `./test.sh`
3. Observe that Firefox cannot be launched due to some profile directory access that should
not occur given a custom `--profile` being specified (within the allowed sandbox access).

```
Error: Access was denied while trying to open files in your profile directory.
```
