#Requires GS_HOME variable defined
#! /bin/sh
#set -x
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: register-application (with no arguments)"
  echo "This script is to register Bpm Flow web application and it should be executed only once after the installation process";
  echo "To unregister the web application see unregister-application script"     
  echo "The environment variable GS_HOME must be set";
  echo "This script is used in conjunction with unregister-application script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi
nohup $GS_HOME/bin/startTopaz $1 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_34
login
exec 
System beginTransaction.
BpmAppLinuxScripts registerScript.
System commit.
%
exit
EOF
