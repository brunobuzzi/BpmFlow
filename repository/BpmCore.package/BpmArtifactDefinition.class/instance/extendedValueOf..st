extended attributes
extendedValueOf: attrName
	"The receiver answer the extended value of attribibute named <attrName> if absent answer <nil>"

	^extendedAttributes at: attrName ifAbsent: [nil]