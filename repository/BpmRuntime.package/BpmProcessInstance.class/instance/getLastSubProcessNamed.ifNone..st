execution enumeration
getLastSubProcessNamed: aString ifNone: aBlock
	"The receiver answer the last subprocess with name <aString> if there is none process with <processId> evaluate the niladic block <aBlock>" 
	| subprocessesCollection |

	subprocessesCollection := (self getProcessesTreeAsCollection select: [:each | each isSubProcess and: [each processName = aString]]) asSortedCollection: [:a :b | a createdTime <= b createdTime].

	subprocessesCollection ifEmpty: [^aBlock value].

	^subprocessesCollection last