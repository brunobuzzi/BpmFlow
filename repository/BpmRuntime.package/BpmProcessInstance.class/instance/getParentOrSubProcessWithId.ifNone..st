execution enumeration
getParentOrSubProcessWithId: processId ifNone: aBlock
	"The receiver answer its parent or a subprocess with id <processId> if there is none process with <processId> evaluate the niladic block <aBlock>" 

	^self getProcessesTreeAsCollection detect: [:each | each id = id] ifNone: aBlock