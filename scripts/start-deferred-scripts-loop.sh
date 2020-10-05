#! /bin/sh
# Requires GS_HOME variable defined
# This command will start a Gem Process to process all deferred Scripts in the system and should be execute only once.
# This Gem should be always running otherwise some Scripts wont't be executed 
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

nohup $GS_HOME/bin/startTopaz $1 -u "ScriptsLoop" -il <<EOF >>MFC.out &
set user DataCurator password swordfish gemstone $1
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
exit
EOF
echo
echo "Gem process has been started to execute Deferred Scripts on Stone named [$1]"
echo