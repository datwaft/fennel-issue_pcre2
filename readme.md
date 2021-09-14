# Fennel `.so` Issue

This is a reproduction for a Fennel issue in which you cannot `require` a `.so` module.

In the case of this reproduction, the module used is [lrexlib](https://github.com/rrthomas/lrexlib), specifically the PCRE2 version.

```sh
docker build -t fennel-issue_pcre2 . && docker run -it fennel-issue_pcre2
# Inside the Docker container
cd repro
lua test.lua
```
