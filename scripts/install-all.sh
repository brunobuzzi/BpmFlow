#!/bin/sh
# Requires GS_HOME variable defined
PROGRAM_NAME="install_all"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s DBNAME"
}
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: install-all -s STONE_NAME "
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
./checkIfStoneExist.sh $STONE
if [ $? -ne 0 ]; then
  error "The Stone {$STONE} does NOT exist"
  exit 1
fi

info "Start: BPM Packages Installation"

#Topaz Installation Script
$GS_HOME/bin/startTopaz $STONE -il <<EOF >>install-all.log
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
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "The installation process has failed check {install-all.log}"
  exit 1
fi

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
$GS_HOME/bin/startTopaz $STONE -il -T 500000 <<EOF  >>highcharts.log
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
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Highcharts installation has failed check {highcharts.log}"
  exit 1
fi
info "Start: Downloading HighchartsSt static files"
cd scripts
sh downloadAndPrepareFilesForFileLibraries.sh -f -d $GS_HOME/shared/repos/BpmFlow/js -p Highstock -v 6.0.1
info "Finish: Downloading HighchartsSt static files"
$GS_HOME/bin/startTopaz $STONE -il -T 500000 <<EOF  >>highcharts.log
set user DataCurator password swordfish gemstone $STONE
login
exec
Highstock6DeploymentMetadataLibrary recursivelyAddAllFilesIn: '$GS_HOME/shared/repos/BpmFlow/js/6.0.3/Highstock/styled/deployment/'.
Highstock6DevelopmentMetadataLibrary recursivelyAddAllFilesIn: '$GS_HOME/shared/repos/BpmFlow/js/6.0.3/Highstock/styled/development/'.
Highstock6ClassicModeDeploymentMetadataLibrary recursivelyAddAllFilesIn: '$GS_HOME/shared/repos/BpmFlow/js/6.0.3/Highstock/oldMode/deployment/'.
Highstock6ClassicModeDevelopmentMetadataLibrary recursivelyAddAllFilesIn: '$GS_HOME/shared/repos/BpmFlow/js/6.0.3/Highstock/oldMode/development/'.
%
logout
quit
EOF
if [ $? -ne 0 ]; then
  error "Highcharts installation has failed check {highcharts.log}"
  exit 1
fi

info "Finish: HighchartsSt Packages Installation"

info "Start: System Initialization"

$GS_HOME/bin/startTopaz $STONE -il -T 500000 <<EOF >>install-all.log
set user DataCurator password swordfish gemstone $STONE
login
exec
UserGlobals at: #SystemRoot put: BpmSystemRoot newWithOrbeon.
GemStoneServerConfiguration default gemstoneIP: 'http://192.168.178.130:8787'. "example IP"
GemStoneServerConfiguration default baseUrlDocumentation: 'https://bpmflow.gitbook.io/project'.
WAPersistenceOrbeonLayer register.
"To register a centralized Component to access other applications"
WABpmCentralPortal register. "ipaddress:port/bpmflow"
%
commit
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "System Initialization has failed check {install-all.log}"
  exit 1
fi

info "Finish: System Initialization"
