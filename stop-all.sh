#Requires GS_HOME variable defined
#! /bin/sh
#set -x
$GS_HOME/bin/startTopaz devKit_34 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_34
login
exec 
System beginTransaction.
BpmAppLinuxScripts stopAllScript.
System commit.
%
exit
EOF
