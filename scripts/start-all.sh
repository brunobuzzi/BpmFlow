#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a multi-thread Web Application Server where each port will be attended by a different (Gem) process. 
# Following the previous example three Gem processes will be created to attend each port. 
# The ports to be attended are defined in ports-all.ini. 
# At registration time (register-application.sh) there is a list of ports in ports-all.ini and each will be active when this script is executed.
PROGRAM_NAME="start-all"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s DBNAME -p ports"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: start-all -s STONE_NAME -p PORTS"
  echo "Start all Web Servers contained in the file (ports-all.ini):"; 
  if [ ! -f ports-all.ini ]; 
    then echo "ports-all.ini file does not exist the script can not be executed"
    else (cat ports-all.ini; echo)
  fi
  echo "The environment variable GS_HOME must be set";
  echo "The (ports-all.ini) file has to have the following format: port1,port2,port3";
  echo "For example: 8787,8888,8989";  
  echo "This script is used in conjunction with stop-all script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  info "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

while getopts :l:s:p opt; do
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

info "Start: Starting Gem processes as Web Servers"

nohup $GS_HOME/bin/startTopaz $STONE -u "WebServer" -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $STONE
login
exec 
   | handler commitThreshold usedMemory |

   commitThreshold := 80.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | 
     Transcript show: ('AlmostOutOfMemory: ', ex printString); cr.
     System commitTransaction ifFalse: [Transcript show: 'AutoCommit failed'. nil error: 'AutoCommit failed' ].
     System _vmMarkSweep. "GC executed to remove unnecessary objects"
     Transcript show: ('GC Executed'); cr. 
     usedMemory := System _tempObjSpacePercentUsedLastMark.
     Transcript show: ('Used Memory: ', usedMemory printString); cr. 
     (usedMemory < commitThreshold)
     ifTrue: [System enableAlmostOutOfMemoryError]"we are cool the memory droped below threshold"
     ifFalse: [(ObjectLogEntry trace: 'AlmostOutOfMemory' object: (System _vmInstanceCounts: 3)) addToLog.
               System commitTransaction].
     ex resume.
   ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold.

  BpmAppLinuxScripts startAllScript. 
%
logout
quit
EOF
info "Finish: Starting Gem processes as Web Servers"