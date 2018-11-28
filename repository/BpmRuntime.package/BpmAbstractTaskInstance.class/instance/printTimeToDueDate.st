time warnings
printTimeToDueDate
	| timeToDueDate printLabel |

	printLabel := PrintStream on: String new.
	timeToDueDate := self timeToDueDate.

	(timeToDueDate days ~= 0) ifTrue: [printLabel nextPutAll: timeToDueDate days printString, 'd:'].

	(timeToDueDate hours ~= 0) ifTrue: [printLabel nextPutAll: timeToDueDate hours printString, 'h:'].

	printLabel nextPutAll:  timeToDueDate minutes printString, 'm'.

	^printLabel contents