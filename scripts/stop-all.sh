#! /bin/sh
# Requires GS_HOME variable defined
# This command will stop all Gem processes serving the Web Application on all ports. 
# The Web Application will no longer respond to http requests.
# sh start-all.sh -s STONE
SCRIPT="stop-all"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT} -s STONE_NAME"
}

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

while getopts :l:s: opt; do
  case $opt in
    s) STONE=$OPTARG ;;
    \?) error "Invalid option: -$OPTARG"
      usage
      exit 1
      ;;
    :)error "Option -$OPTARG requires Stone name and ports."
      usage
      exit 1
     ;;
  esac
done

./checkIfStoneExist.sh $STONE
if [ $? -ne 0 ]; then
  error "The Stone {$STONE} does NOT exist"
  exit 1
fi

info "Start: Stopping Gem processes (Web Servers)"

nohup $GS_HOME/bin/startTopaz $STONE -il <<EOF >>stop-all.log &
set user DataCurator password swordfish gemstone $STONE
login
exec 
System beginTransaction.
BpmAppLinuxScripts stopAllScript.
System commit.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to stop Web Servers check {stop-all.log}"
  exit 1
fi

info "Finish: Stopping Gem processes (Web Servers)"
