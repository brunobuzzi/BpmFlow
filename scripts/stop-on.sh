#! /bin/sh
# Requires GS_HOME variable defined
# This command take an argument and stop the Gem Process running on that port.
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: stop-on STONE_NAME PORT"
  echo "Stop a Web Server on port number PORT"; 
  echo "The environment variable GS_HOME must be set"; 
  echo "This script is used in conjunction with start-on.sh script";   
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

  BpmAppLinuxScripts stopOnPortScript: $2.
%
exit
EOF
echo
echo "A Gem process has been stopped on Stone named [$1] on port [$2]"
echo