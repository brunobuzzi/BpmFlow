extended attributes
extendedValueOf: attrName ifAbsent: aBlock
	"The receiver answer the extended value of attribibute named <attrName> if absent evaluate the niladic block <aBlock>"

	^extendedAttributes at: attrName ifAbsent: aBlock