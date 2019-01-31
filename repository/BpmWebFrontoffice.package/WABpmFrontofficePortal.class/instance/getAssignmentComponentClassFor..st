other
getAssignmentComponentClassFor: anOrbeonFormUser
	"Answer the class to use to display User Process Assginments.
	- Can be linked (in a different web page of Smalltalk application).
	- Can be embedded (in the same we page of Smalltalk application)"

	anOrbeonFormUser userOptions orbeonWebIsLinked ifTrue: [^WALinkedProcessBrowser].

	^WAEmbeddedProcessBrowser