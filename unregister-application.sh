#Requires GS_HOME variable defined
#! /bin/sh
#set -x
$GS_HOME/bin/startTopaz devKit_34 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_33
login
exec 
System beginTransaction.
BpmAppLinuxScripts unregisterScript.
System commit.
%
exit
EOF
