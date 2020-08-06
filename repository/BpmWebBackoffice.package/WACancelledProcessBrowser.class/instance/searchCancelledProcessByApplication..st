searching
searchCancelledProcessByApplication: appName
	| application cancelledProcesses |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcesses := OrderedCollection new.

	(self defaultProcessDefinitionClass getAllVersionsIn: appName) do: [:eachProcDef | 
		eachProcDef abortedProcessesDo: [:each | cancelledProcesses add: each].
	].

	searchResult := cancelledProcesses