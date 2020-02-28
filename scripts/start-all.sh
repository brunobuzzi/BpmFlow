#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a multi-thread Web Application Server where each port will be attended by a different (Gem) process. 
# Following the previous example three Gem processes will be created to attend each port. 
# The ports to be attended are defined in ports-all.ini. 
# At registration time (register-application.sh) there is a list of ports in ports-all.ini and each will be active when this script is executed.

After executing this script some pid and log files will be create at $GS_HOME/server/stones/devKit_34/logs/. In this case is the path includes devKit_34 because the Stone was created with that name. The  pid and log files will be like BPM_server-8787.log and BPM_server-8787.pid. A pair of these file will be create per each port defined in ports-all.ini.

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: start-all STONE_NAME"
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

nohup $GS_HOME/bin/startTopaz $1 -u "WebServer" -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $1
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
exit
EOF
echo
echo "A group of Gem processes has been started on Stone named [$1] on ports contained in [ports-all.ini]"
echo