#Requires GS_HOME variable defined
#! /bin/sh
#set -x
if [ "$1" == "-h" ]; then
  echo "Usage: unregister-application (with no arguments)"
  echo "This script is to unregister Bpm Flow web application and if it is necessary it should be executed after registration";
  echo "To register the web application again see register-application script"     
  echo "The environment variable GS_HOME must be set";
  echo "This script is used in conjunction with register-application script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi
$GS_HOME/bin/startTopaz devKit_34 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_34
login
exec 
System beginTransaction.
BpmAppLinuxScripts unregisterScript.
System commit.
%
exit
EOF
