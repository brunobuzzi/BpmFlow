other
forFiles: pathFileCollection
	| reader file contents |

	pathFileCollection isEmpty ifTrue: [^super new initialize].

	file:= FileStream fileNamed: pathFileCollection first.
	contents := file contents.
	file close.
	reader := self for: pathFileCollection first withString: contents.

	pathFileCollection allButFirst do:[:each |
		file:= FileStream fileNamed: each.
		contents := file contents.
		file close.
		reader addXPDLDocument: (XMLDOMParser parse: contents) namedAs: each].

	^reader connectProcesses