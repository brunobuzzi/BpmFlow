searching
searchCancelledProcessByApplication: appName
	| application cancelledProcesses |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcesses := OrderedCollection new.

	(self session systemRoot getAllVersionsIn: appName) do: [:eachProcDef | 
		eachProcDef abortedProcessesDo: [:each | cancelledProcesses add: each].
	].

	searchResult := cancelledProcesses