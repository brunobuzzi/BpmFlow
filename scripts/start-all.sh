#Requires GS_HOME variable defined
#! /bin/sh
#set -x
if [ "$1" == "-h" ]; then
  echo "The command take no arugments";
  echo "It will start all Web Servers contained in the file ports-all.ini:";
  if [ ! -f ports-all.ini ]; 
    then echo "ports-all.ini file does not exist command can not be executed"
    else cat ports-all.ini;
  fi
  echo ;
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset";
  exit 0
fi
$GS_HOME/bin/startTopaz devKit_34 -u "WebServer" -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_34
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
