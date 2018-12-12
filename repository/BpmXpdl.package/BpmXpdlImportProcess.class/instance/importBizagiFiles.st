import
importBizagiFiles
	| appDictionary fileArray |

	appDictionary := Dictionary new.
	fileArray := OrderedCollection new.

	1 to: self getNumberOfProcesses do: [:index | | fileName shortName |
		fileName := indexXpdlFileMapper at: index.
		shortName := fileName allButLast: (FileDirectory extensionFor: fileName) size + 1.
		appDictionary at: shortName put: (indexApplicationMapper at: index).
		fileArray add: ((FileDirectory default directoryNamed: 'tmp') pathName, '/', fileName)].

	(self checkFilesFormatOf: fileArray) ifFalse: [^XpdlFileFormatException signal: 'Wrong XPDL file format'].
	"ERROR handler"
	xpdlReader := self getXpdlReaderClass forFiles: fileArray asArray.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.

	processGenerator xpdlPackages do: [:eachPackage | 
		eachPackage pools do: [:eachPool | 
			processGenerator mapProcess: eachPool getName toApplication: (self getApplicationFor: eachPackage).
		].
	].

	"xpdlReader getImportWarningReportWith: self createXpdlFileApplicationMapping."
	xpdlStructureVisitor := XPDLStructureAnalyzerVisitor newWithMapping: self createXpdlPackageApplicationMapping.
	xpdlStructureVisitor visitAllXpdlPackages.

	"If false (no warnings) -> the processes definition are created and stored"
	xpdlStructureVisitor hasWarnings ifFalse: [^self createBpmProcessesDefinitions].