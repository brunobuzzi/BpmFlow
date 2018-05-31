query variables
getVersion
	| versionString |

	versionString := (self searchValueAt: 'version' ifAbsent: [^nil]) ifNotNil: [:value | (value = 'All') ifTrue: [nil] ifFalse: [value]].

	^[Number fromString: versionString] on: Error do: [:ex | 1]