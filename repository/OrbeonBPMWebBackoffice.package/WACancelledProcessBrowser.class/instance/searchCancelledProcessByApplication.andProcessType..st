search area
searchCancelledProcessByApplication: appName andProcessType: procName
	| application cancelledProcess |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcess := OrderedCollection new.

	
	(BpmProcessDefinition getAllProcessesNamed: procName in: appName) do: [:eachProcDef | 
		 cancelledProcess addAll: eachProcDef abortedProcesses.
	].

	searchResult := cancelledProcess