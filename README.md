# dss - double space suppression

Replace consecutive vertical space lines with single line.

For the official official GitHub repo visit:

    https://github.com/lcn2/dss


# Usage:

```sh
$ dss < input > output
```

or:

```sh
$ some | pipe | commands | dss | more | pipe | commands
```


# To install:

```sh
$  make install
```


# Example:

To show how `dss` works we will run a few commands to show an example file with
consecutive blank lines and then remove them (redirecting to an out file) and
then update (also with `sed(1)`) to correct the text in the lines before we then
show the updated file. The reason the text has to be updated in the output file
is because we want to show how the number of lines is changed due to consecutive
blank lines.

## First show `example.txt`:

```sh
$ cat example.txt
```

You should see:

```
    This is the first line.



    This is the fifth line.
```

## Second run `dss` on the file, writing the output to `example.out`

```
$ dss < example.txt > example.out
```

Here you should see no output so we will show what `example.out` looks like
after `dss` processes it, below.

## Third, show `example.out`:

```sh
$ cat example.out
```

You should see:

```
    This is the first line.

    This is the fifth line.
```

## Fourth, fix the text in `example.out`:

As can be seen, `dss` removed the consecutive lines so the text describing the
(now third) line is incorrect. Let's fix it:

```sh
$ sed -i'' 's/fifth/third/g' example.out
```

## Finally show the contents of `example.out`

```sh
$  cat example.out
```

This will show the correctly updated `example.out`:

```
    This is the first line.

    This is the third line.
```

Of course you could change the order of commands but this shows how it works
well enough.

# History:

The `dss.sed` file and the `dss` shell script dates back
to 1987 when the author, Landon Curt Noll, won a contest
by creating the smallest (in byte length) known `sed(1)`
script that could replace consecutive vertical space
lines with a single line.

The `dss.sed` file, the core of `dss`, has not changed since it
was initially proposed part of the content.

This code was created back in 1987 when it was put under
SCCS control, then put under RCS control on Sep 22 02:28:33
1999.  It was last modified under RCS on 2004/01/14 16:56:40.
The code was put under git control on Tue Feb 14 17:21:07 2023,
converting from RCS to git via the `rcs-fast-export` tool.

The [dss repo](https://github.com/lcn2/dss) was put under
GitHub control on 2023 Feb 16, and converted into a public
GitHub repo on 2024 Jul 21.


# Thank you:

Landon Curt Noll wishes to thank
[Andrew Sharpe](https://www.linkedin.com/in/andrew-sharpe-a2817a1/)
for inspiring this code.


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/dss/security/policy)".
