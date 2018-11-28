get artifacts
getScriptNamed: aString ifNone: aBlock

	^scripts at: aString ifAbsent: aBlock