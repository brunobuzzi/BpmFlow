#! /bin/sh
# Requires GS_HOME variable defined
# To unregister application.
# This shell command has to be executed only once (after register-application.sh has been executed). 
# And is used if you want to uninstall the Web Application.
PROGRAM_NAME="unregister-application"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s DBNAME"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: unregister-application STONE_NAME"
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

if sh checkIfStoneExist.sh "$STONE"; 
  then echo "" 
  else 
    echo ;
    echo "Topaz for Stone named [$STONE] failed to start";
    echo;
    exit 0
fi

info "Start: Unregistering Web Servers"

nohup $GS_HOME/bin/startTopaz $STONE -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $STONE
login
exec 
System beginTransaction.
BpmAppLinuxScripts unregisterScript.
System commit.
%
exit
EOF

info "Finish: All Web Components have been unregistered !!!"
