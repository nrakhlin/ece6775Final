#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/npr29/hls6775/ece6775Final/bnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}