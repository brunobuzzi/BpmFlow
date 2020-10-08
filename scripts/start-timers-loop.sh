#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a Gem Process to process all Timers in the system and should be execute only once.
# This Gem should be always running otherwise some Timers won't be processed 
SCRIPT="start-timers-loop"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT} -s STONE_NAME"
}

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

info "Start: Starting Timers processes"

nohup $GS_HOME/bin/startTopaz $STONE -u "TimersLoop" -il <<EOF >>start-timers-loop.log &
set user DataCurator password swordfish gemstone $STONE
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

sleep 1
pid_isRunning $!
if [ $? -ne 0 ]; then
  error "The Gem process could NOT be started check {start-timers-loop.log}"
  exit 1
fi

info "Finish: Starting Timers processes"