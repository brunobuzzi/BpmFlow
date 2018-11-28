process definition creation
generateAllProcess
	"The receiver creates all Processes from <xpdlPackages>.
	1- Create the GLOBAL Participants for all processes.
	2- Create one process <BpmProcessDefinition> per each pool <XPDLPoolNode> in all packages <XPDLPackageNode>
	3- Connect all sub processes node <BpmSubProcessTaskDefinition> with the concrete processes definitions <BpmProcessDefinition>"

	xpdlPackages isEmpty ifTrue: [^self].

	self createParticipantDefinitionsOf: xpdlPackages asArray first. "participants are GLOBAL to all sheets in a Bizagi model with subprocesses"

	xpdlPackages do: [:eachPackage | 
		eachPackage pools do: [:each | | newProcess |
			newProcess := self generateProcessBasedOnWorkflow: each workflow.
			newProcess xmlString: eachPackage prettyPrinted. "set the XML string of the process"
			processes at: newProcess processName put: newProcess.
			self createEmbeddedSubProcessFor: newProcess basedOn: each package: eachPackage."create the embedded hierarchy"
		].
	].
	self connectSubProcessTaskWithSubProcess. "connect sub process task  artifacts with process definitions"

	^processes