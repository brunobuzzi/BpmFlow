other
securityLevel
	"Answer the security level when checking embedding code"

	(isValidClassesEnabled and: [isValidSelectorsEnabled]) ifTrue: [^#high].

	(isValidClassesEnabled or:[isValidSelectorsEnabled]) ifTrue: [^#medium].

	^#low