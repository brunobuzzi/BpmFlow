import
generateMapperDictionary
	| dictionary |

	dictionary := Dictionary new.

	selectedUploads keysAndValuesDo: [:index :processName |
		(processName size > 5)
		ifTrue: [dictionary at: (processName allButLast: 5) put: (self getApplicationManagerClass getAnyApplicationNamed: (uploadProcesses at: index))].
	].

	^dictionary