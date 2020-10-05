#!/bin/sh
# Requires GS_HOME variable defined
PROGRAM_NAME="install_all"
info() {
  echo 1>&2
  CURRENT_TIME=`date`
  echo ${PROGRAM}[INFO]: $* [$CURRENT_TIME] 1>&2
  echo 1>&2
}
error() {
  echo 1>&2
  echo [ERROR]: $* 
  echo 1>&2
}
usage() {
  error "Usage: ${PROGRAM_NAME} -s DBNAME"
}
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: install-all STONE_NAME "
  echo "Install the entire BPM application on Stone named STONE_NAME"; 
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
    :)error "Option -$OPTARG requires an argument."
      usage
      exit 1
     ;;
  esac
done
if sh checkIfStoneExist.sh "$STONE"; 
  then echo "" 
  else 
    echo ;
    echo "Topaz for Stone named [$1] failed to start";
    echo;
    exit 0
fi

info "Start: BPM Packages Installation"

#Topaz Installation Script
$GS_HOME/bin/startTopaz $STONE -il <<EOF
set user DataCurator password swordfish gemstone $STONE
login
exec
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.
GsDeployer deploy: [
  Metacello new
    baseline: 'Seaside3';
    repository: 'github://SeasideSt/Seaside:master/repository';
    onLock: [:ex | ex honor];
    load: 'CI' ].
GsDeployer deploy: [
  Metacello new
    baseline: 'AbstractApplicationObjects';
    repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository';
    onLock: [:ex | ex honor];
    load ].   
GsDeployer deploy: [
  Metacello new
    baseline: 'Sewaf';
    repository: 'github://brunobuzzi/SEWAF:master/repository';
    onLock: [:ex | ex honor];
    load ].      
GsDeployer deploy: [
  Metacello new
    baseline: 'OrbeonPersistenceLayer';
    repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master/repository';
    onLock: [:ex | ex honor];
    load ].   
GsDeployer deploy: [
  Metacello new
    baseline: 'BpmFlow';
    repository: 'github://brunobuzzi/BpmFlow:master/repository';
    onLock: [:ex | ex honor];
    load ].
%
exit
EOF

info "Finish: BPM Packages Installation"
info "Start: HighchartsSt Packages Installation"

# Highcharts is installed locally
# Check: https://github.com/brunobuzzi/BpmFlow/issues/482
cd $GS_HOME/shared/repos
git clone https://github.com/brunobuzzi/HighchartsSt.git
cd HighchartsSt
git branch
git branch -a
git checkout origin/v6.0.1
git checkout v6.0.1
$GS_HOME/bin/startTopaz $STONE -il -T 500000 <<EOF  
set user DataCurator password swordfish gemstone $STONE
login
exec
GsDeployer deploy: [
    Metacello new
         baseline: 'HighchartsSt';
         filetreeDirectory: ('$GS_HOME/shared/repos/HighchartsSt/repository');
         onLock: [:ex | ex honor];
		     onConflictUseLoaded;
         load.
].
%
exit
EOF
info "Finish: HighchartsSt Packages Installation"

info "Start: System Initialization"
$GS_HOME/bin/startTopaz $STONE -il <<EOF
set user DataCurator password swordfish gemstone $STONE
login
exec
BpmSystemInitialization createSystemDefaultObjects.
GemStoneServerConfiguration default gemstoneIP: 'http://192.168.178.130:8787'. "example IP"
GemStoneServerConfiguration default baseUrlDocumentation: 'https://bpmflow.gitbook.io/project'.
WAPersistenceOrbeonLayer register.
"To register a centralized Component to access other applications"
WABpmCentralPortal register. "ipaddress:port/bpmflow"
%
commit
exit
EOF

info "Finish: System Initialization"
