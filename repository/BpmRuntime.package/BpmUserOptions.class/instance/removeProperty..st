properties
removeProperty: named

	^applicationOptions removeKey: named ifAbsent: [nil]