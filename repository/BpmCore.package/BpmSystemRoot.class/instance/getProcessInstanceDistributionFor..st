statistics
getProcessInstanceDistributionFor: appName
	| application distribution |

	distribution := OrderPreservingDictionary new.

	application := self applicationNamed: appName ifNone: [^distribution].

	application processesDefinitionsKeysAndValuesDo: [:procName :versionCollection | | sum |
		sum := 0.
		versionCollection do: [:procDef | sum := sum + procDef processInstancesSize].
		distribution at: procName put: sum.
	].

	^distribution