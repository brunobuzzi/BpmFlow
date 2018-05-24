query variables
getProcessFieldList
	| fields |

	self isFieldValueEvolution ifTrue: [^self getProcessNumberFieldList].

	fields := self getBasicProcessFieldList.

	^(fields remove: 'assignmentOop[s]' ifAbsent: []; 
			remove: 'k[s]' ifAbsent: []; 
			remove: 's[s]' ifAbsent: [];
			remove: 'oop[s]' ifAbsent: [];
			remove: 'uuid[s]' ifAbsent: [];
			yourself) asSortedCollection