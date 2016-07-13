properties
removeProperty: named put: value

	^applicationOptions removeKey: named ifAbsent: [nil]