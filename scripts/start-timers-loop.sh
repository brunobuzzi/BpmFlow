#Requires GS_HOME variable defined
#! /bin/sh
#set -x
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: start-timers-loop STONE_NAME"
  echo "Start a OS Gem process to manage Bpm Flow Timers";
  echo "This is a 24x7 Gem process"; 
  echo "If this process is not running then Timers will never produce tokens in any BPM Process"     
  echo "The environment variable GS_HOME must be set";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi
nohup $GS_HOME/bin/startTopaz $1 -u "TimersLoop" -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $1
login
nbrun
   | handler commitThreshold |

   commitThreshold := 65.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | self halt ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold.

[BpmTimerEventMonitor default startUninterruptedLoop]
  on: AlmostOutOfMemory enable
  do: [:ex | ex error: ex description]. 

%
exit
EOF
