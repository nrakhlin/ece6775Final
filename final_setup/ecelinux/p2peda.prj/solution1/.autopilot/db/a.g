#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/npr29/hls6775/this_is_for_new_branch/ece6775Final/final_setup/ecelinux/p2peda.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
