#! /bin/sh
#set -x
$GS_HOME/bin/startTopaz devKit_33 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_33
login
! run garbage collection mark/sweep
exec 
System beginTransaction.
UserGlobals at: #'test' put: (Array with: 'added').
System commit. 
%
exit
EOF