process definition creation
createEmbeddedSubProcessFor: aBpmProcessDefinition basedOn: xpdlPool package: xpdlPackage
	"The receiver create all embedded sub process of <aBpmProcessDefinition> in pool <xpdlPool> and package <xpdlPackage>.
	It support recursive sub processes of deep N"
	| embedded |

	embedded := OrderedCollection new.
	xpdlPool getAllEmbbeddedProcesses do: [:eachWorkflow | | newSubProcDefinition |
		newSubProcDefinition := (self getProcessDefinitionClassFrom: eachWorkflow) newNamed: eachWorkflow getName.
		newSubProcDefinition sheetName: eachWorkflow getSheetName.
		self populateBpmDefinition: newSubProcDefinition withXPDL: eachWorkflow for: aBpmProcessDefinition application.
		newSubProcDefinition isEmbedded: true.
		newSubProcDefinition xmlString: xpdlPackage prettyPrinted.
		processes at: newSubProcDefinition processName put: newSubProcDefinition.
		embedded add: (Array with: eachWorkflow with: newSubProcDefinition).
	].

	embedded do: [:eachFirst | "connect embedded process with it's subprocess (first: workflow, second: BpmSubProcDefinition)"
		embedded do: [:eachSecond | 
			(eachFirst == eachSecond)
			ifFalse: [(eachFirst first parentWorkflow == eachSecond first)
						ifTrue:[eachSecond second addSubProcess: eachFirst second].
						(eachSecond first parentWorkflow == eachFirst first)
						ifTrue:[eachFirst second addSubProcess: eachSecond second]
			].
		].
	].
	((embedded collect: [:each | each second]) "collect process definition"
		select: [:each | each parentProcess isNil])  "sub process with not parent --> the parent is the top parent"
			do: [:each | aBpmProcessDefinition addSubProcess: each].