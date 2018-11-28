distribution
getProcessInstanceDistributionFor: procName in: appName
	| distribution |

	distribution := OrderPreservingDictionary new.

	(self getAllProcessesNamed: procName in: appName) do: [:eachProcDef | 
		distribution at: eachProcDef version printString put: eachProcDef processInstances size]. 

	^distribution