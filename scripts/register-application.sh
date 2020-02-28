#! /bin/sh
# Requires GS_HOME variable defined
# To register the application to run, this shell command has to be executed only once. This script read data in ports-all.ini file and register all ports in this file. 
# For example if  ports-all.ini has the following content: 8787,8888,8989
# This will register the Web Application to be used in ports: 8787,8888,8989. 
# Comma is used to separate ports. The ini's files are in the same directory as the scripts.
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: register-application STONE_NAME"
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
BpmAppLinuxScripts registerScript.
System commit.
%
exit
EOF
echo
echo "All Web Components have been registered !!!"
echo