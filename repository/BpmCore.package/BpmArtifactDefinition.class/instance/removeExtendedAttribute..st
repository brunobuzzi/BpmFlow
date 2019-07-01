extended attributes
removeExtendedAttribute: attrName 
	"The receiver remove the extended attribute named <attrName>"

	^extendedAttributes removeKey: attrName ifAbsent: []