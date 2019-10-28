#Requires GS_HOME variable defined
#! /bin/sh
#set -x
if [ "$1" == "-h" ]; then
  echo "Usage: start-deferred-scripts-loop (with no arguments)"
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
$GS_HOME/bin/startTopaz devKit_34 -u "ScriptsLoop" -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_34
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
