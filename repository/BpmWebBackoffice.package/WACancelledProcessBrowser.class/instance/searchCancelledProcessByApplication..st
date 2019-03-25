searching
searchCancelledProcessByApplication: appName
	| application cancelledProcess |

	application := self getSelectedApplicationOrNil.
	application ifNil: [^searchResult := OrderedCollection new].

	cancelledProcess := OrderedCollection new.

	(self defaultProcessDefinitionClass getAllVersionsIn: appName) do: [:eachProcDef | 
		 cancelledProcess addAll: eachProcDef abortedProcesses.
	].

	searchResult := cancelledProcess