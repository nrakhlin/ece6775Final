#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jjm469/ece6775/FINAL/final_pre_dis/final_setup/ecelinux/p2peda.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
