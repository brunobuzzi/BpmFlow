#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a Gem Process to process all deferred Scripts in the system and should be execute only once.
# This Gem should be always running otherwise some Scripts wont't be executed 
SCRIPT="start-deferred-scripts-loop"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT} -s STONE_NAME"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: start-deferred-scripts-loop STONE_NAME"
  echo "Start a OS Gem process to execute BPM Scripts on a background process";  
  echo "This is a 24x7 Gem process";   
  echo "If this process is not running then Deferred Script will never be executed"     
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

info "Start: Starting Deferred Scripts processes"

nohup $GS_HOME/bin/startTopaz $STONE -u "ScriptsLoop" -il <<EOF >>start-deferred-scripts-loop.log &
set user DataCurator password swordfish gemstone $STONE
login
exec 
   | handler commitThreshold |
   commitThreshold := 65.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | self halt ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold.

[BpmScriptExecutor default startUninterruptedLoop]
  on: AlmostOutOfMemory enable
  do: [:ex | ex error: ex description]. 
%
logout
quit
EOF

sleep 1
pid_isRunning $!
if [ $? -ne 0 ]; then
  error "The Gem process could NOT be started check {start-deferred-scripts-loop}"
  exit 1
fi

info "Finish: Starting Deferred Scripts processes"

exit 0