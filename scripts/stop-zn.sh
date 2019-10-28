#! /bin/sh
#set -x
if [ "$1" == "-h" ]; then
  echo "Usage: stop-zn (with no arguments)"
  echo "Stop all Web Servers contained in the file (zn-ports.ini):"; 
  if [ ! -f zn-ports.ini ]; 
    then echo "zn-ports.ini file does not exist the script can not be executed"
    else (cat ports-all.ini; echo)
  fi
  echo "The environment variable GS_HOME must be set";
  echo "The (zn-ports.ini) file has to have the following format: port1,port2,port3";
  echo "For example: 8787,8888,8989";  
  echo "This script is used in conjunction with start-zn script";   
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
BpmAppLinuxScripts stopZnPortsScript.
System commit.
%
exit
EOF
