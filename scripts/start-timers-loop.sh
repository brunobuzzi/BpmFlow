#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a Gem Process to process all Timers in the system and should be execute only once.
# This Gem should be always running otherwise some Timers won't be processed 

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
echo
echo "Gem process has been started to evaluate Timers on Stone named [$1]"
echo