searching
searchCancelledProcessByApplication: appName
	| application cancelledProcess |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcess := OrderedCollection new.

	(BpmProcessDefinition getAllVersionsIn: appName) do: [:eachProcDef | 
		 cancelledProcess addAll: eachProcDef abortedProcesses.
	].

	searchResult := cancelledProcess