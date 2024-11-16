#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jjm469/ece6775/final_project/repo/blowfish/blowfish_pure/blowfish.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
