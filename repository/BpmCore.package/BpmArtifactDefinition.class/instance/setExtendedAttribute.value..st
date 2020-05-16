extended attributes
setExtendedAttribute: attrName value: anObject
	"The receiver set the extended attribute named <attrName> with the value <anObject>"

	^extendedAttributes at: attrName put: anObject