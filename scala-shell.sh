#!/bin/sh
exec scala "$0" "$@"
!#


if(args.length != 0)
    println("Hello, " + args(0) + "!")
else
    println("No args.")


