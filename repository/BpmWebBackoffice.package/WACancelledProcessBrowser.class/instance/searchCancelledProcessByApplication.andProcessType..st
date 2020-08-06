searching
searchCancelledProcessByApplication: appName andProcessType: procName
	| application cancelledProcesses |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcesses := OrderedCollection new.
	
	(self defaultProcessDefinitionClass getAllProcessesNamed: procName in: appName) do: [:eachProcDef | 
		eachProcDef abortedProcessesDo: [:each | cancelledProcesses add: each].
	].

	searchResult := cancelledProcesses