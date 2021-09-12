# Fennel `.so` Issue

This is a reproduction for a Fennel issue in which you cannot `require` a `.so` module.

In the case of this reproduction, the module used is [lrexlib](https://github.com/rrthomas/lrexlib), specifically the PCRE2 version.

# How to execute the test

```sh
cd repro
fennel test.fnl
```
