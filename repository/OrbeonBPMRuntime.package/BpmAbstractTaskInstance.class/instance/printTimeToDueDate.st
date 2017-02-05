time warnings
printTimeToDueDate
	| timeToDueDate printLabel |

	printLabel := PrintStream on: String new.
	timeToDueDate := self timeToDueDate.

	(timeToDueDate date day ~= 0) ifTrue: [printLabel nextPutAll: timeToDueDate date day printString, 'd:'].

	(timeToDueDate time hours ~= 0) ifTrue: [printLabel nextPutAll: timeToDueDate time hours printString, 'h:'].

	printLabel nextPutAll:  timeToDueDate time minutes printString, 'm'.

	^printLabel contents