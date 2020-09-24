#! /bin/sh
# Requires GS_HOME variable defined
# This command is similar to [start-all.sh] but instead of starting a Gem Process for each port it only start a subset of all ports. 
# The subset is defined in [zn-ports.ini] file.
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: start-zn STONE_NAME"
  echo "Start all Web Servers contained in the file (zn-ports.ini):"; 
  if [ ! -f zn-ports.ini ]; 
    then echo "zn-ports.ini file does not exist the script can not be executed"
    else (cat ports-all.ini; echo)
  fi
  echo "The environment variable GS_HOME must be set";
  echo "The (zn-ports.ini) file has to have the following format: port1,port2,port3";
  echo "For example: 8787,8888,8989";  
  echo "This script is used in conjunction with stop-zn script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi
if [ -z "$1" ]; then
  echo "GemStone/S name must be an argument of the script";
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

  BpmAppLinuxScripts startZnPortsScript.
%
exit
EOF
echo
echo "A group of Gem processes has been started on Stone named [$1] on ports contained in [zn-ports.ini]"
echo