export
getPrintableValueFrom: fieldValue

	(fieldValue class == String) ifTrue: [^fieldValue].

	^fieldValue printString