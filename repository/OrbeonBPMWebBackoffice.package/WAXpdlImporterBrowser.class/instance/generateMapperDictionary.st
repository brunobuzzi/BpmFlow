import
generateMapperDictionary
	| dictionary |

	dictionary := Dictionary new.

	selectedUploads keysAndValuesDo: [:index :xpdlFileName |
		dictionary at: xpdlFileName put: (self getApplicationManagerClass getAnyApplicationNamed: (uploadProcesses at: index)).
	].

	^dictionary