#! /bin/sh
# Requires GS_HOME variable defined
# This command will stop all Gem processes serving the Web Application on all ports. 
# The Web Application will no longer respond to http requests.
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: stop-all STONE_NAME"
  echo "Stop all Web Servers contained in the file (ports-all.ini):"; 
  if [ ! -f ports-all.ini ]; 
    then echo "ports-all.ini file does not exist the script can not be executed"
    else (cat ports-all.ini; echo)
  fi
  echo "The environment variable GS_HOME must be set";
  echo "The (ports-all.ini) file has to have the following format: port1,port2,port3";
  echo "For example: 8787,8888,8989";  
  echo "This script is used in conjunction with start-all script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

if sh checkIfStoneExist.sh "$1"; 
  then echo "" 
  else 
    echo ;
    echo "Topaz for Stone named [$1] failed to start";
    echo;
    exit 0
fi

nohup $GS_HOME/bin/startTopaz $1 -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $1
login
exec 
System beginTransaction.
BpmAppLinuxScripts stopAllScript.
System commit.
%
exit
EOF
echo
echo "A group of Gem processes has been stopped on Stone named [$1] on ports contained in [ports-all.ini]"
echo