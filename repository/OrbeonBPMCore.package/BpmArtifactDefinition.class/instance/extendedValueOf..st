extended attributes
extendedValueOf: attrName

	^extendedAttributes at: attrName ifAbsent: [nil]