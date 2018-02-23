import
importBizagiFiles
	| appDictionary fileArray |

	appDictionary := Dictionary new.
	fileArray := OrderedCollection new.

	1 to: numberOfProcess do: [:index | | fileName shortName |
		fileName := selectedUploads at: index.
		shortName := fileName allButLast: (FileDirectory extensionFor: fileName) size + 1.
		appDictionary at: shortName put: (uploadProcesses at: index).
		fileArray add: ((FileDirectory default directoryNamed: 'tmp') pathName, '/', fileName)].

	(self checkFilesFormatOf: fileArray) ifFalse: [^self].
	"ERROR handler"
	reader := XPDLReader2 forFiles: fileArray asArray.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator xpdlPackages do: [:eachPackage | 
		eachPackage pools do: [:eachPool | 
			processGenerator mapProcess: eachPool getName toApplication: (self getApplicationFor: eachPackage).
		].
	].

	reader getImportWarningReportWith: self generateMapperDictionary.

	"If false (no warnings) -> the processes definition are created and stored"
	reader hasWarnings ifFalse: [^self createBpmProcessDefinition].

	self show: ((WABizagiImportReport parent: self)
						warnings: reader importReport;
						yourself).