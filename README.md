### Taks1
It contains simple make files where each of them has only one target.
The main `Makefile` has one target `all` to build executable.

### Task2
The main `Makefile` invokes other makefiles: `make1.mk`, `make2.mk`, and `make3.mk`.
The files are invoked in different methods: with the `make -f` command or with the `include` directive. `include` directive is used by default.

```
INVOKE_MKS=makef make #uses make -f command
INVOKE_MKS=include make #uses include directive

make clean #clear binaries and executable
```
