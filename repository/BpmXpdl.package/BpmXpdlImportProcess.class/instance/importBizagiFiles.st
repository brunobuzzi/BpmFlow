import
importBizagiFiles
	"The receiver import all Bizagi (XPDL) files in collection <indexXpdlFileMapper> if there is an format error throw <anXpdlFileFormatException> "
	| appDictionary fileArray packageApplicationMapping |

	appDictionary := Dictionary new.
	fileArray := OrderedCollection new.

	1 to: self getNumberOfProcesses do: [:index | | fileName shortName |
		fileName := indexXpdlFileMapper at: index.
		shortName := fileName allButLast: (FileDirectory extensionFor: fileName) size + 1.
		appDictionary at: shortName put: (indexApplicationMapper at: index).
		fileArray add: ((FileDirectory default directoryNamed: 'tmp') pathName, '/', fileName)].

	(self checkFilesFormatOf: fileArray) ifFalse: [^XpdlFileFormatException signal: 'Wrong XPDL file format'].
	"ERROR handler"

	xpdlReader := systemRoot newXpdlReaderForFiles: fileArray asArray. "create the <XPDLReader> to read selected XPDL files"

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: systemRoot.

	processGenerator xpdlPackages do: [:eachPackage | 
		eachPackage pools do: [:eachPool | 
			processGenerator mapProcess: eachPool getName toApplication: (self getApplicationFor: eachPackage).
		].
	].
	"create a Dictionary with key <aXPDLPackageNode> and value <anApplication>. To define in which <Application> the Bpm process will be stored"
	packageApplicationMapping := self createXpdlPackageApplicationMapping.

	"the structure visitor check that all bpm artifacts are well formatted"
	xpdlStructureVisitor := XPDLStructureAnalyzerVisitor newWithMapping: packageApplicationMapping in: bpmEnvironment.
	xpdlStructureVisitor visitAllXpdlPackages.

	"If false (no warnings) -> the processes definition are created and but not stored yet"
	xpdlStructureVisitor hasWarnings 
	ifFalse: [^self createBpmProcessesDefinitions].