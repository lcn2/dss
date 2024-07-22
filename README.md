# dss - double space suppression

Replace consecutive vertical space lines with single line.

For the official official GitHub repo visit:

    https://github.com/lcn2/dss


# Usage:

```sh
    dss < input > output
```

or:

```sh
    some | pipe | commands | dss | more | pipe | commands
```


# To install:

```sh
    make install
```


# History:

The `dss.sed` file and the  `dss` shell script dates back to 1987
when the author, Landon Curt Noll, won a contest for the smallest
(byte length) sed script that could replace consecutive vertical
space lines with single line.

The `dss.sed` file, the core of dss, has not changed since it
was initially proposed part of the content.

The this code are created back in in 1987 when it was put under
SCCS control, then put under RCS control on Sep 22 02:28:33 1999
and was last RCS modified on 2004/01/14 16:56:40.  The script was
put under git control on Tue Feb 14 17:21:07 2023, converting from
RCS to git via `rcs-fast-export`.

The [dss repo](https://github.com/lcn2/dss) was put under GitHub control
on 2023 Feb 16, and converted into a public GitHub repo on 2024 Jul 21.


# Thank you:

Landon Curt Noll wishes to thank
[Andrew Sharpe](https://www.linkedin.com/in/andrew-sharpe-a2817a1/)
for inspiring this code.
