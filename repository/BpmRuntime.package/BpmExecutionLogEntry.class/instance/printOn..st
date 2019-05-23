other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[#', type, '#]'.

	aStream nextPutAll: '[', bpmObject printString, ']'.

	aStream nextPutAll: '[', timeStamp printString, ']'.