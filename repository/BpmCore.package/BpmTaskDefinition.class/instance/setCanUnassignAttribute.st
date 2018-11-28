extended attributes
setCanUnassignAttribute
	"The receiver set the extended attribute <canUnassign>. 
	By default the value is <true> so user can untake the assigment after be assign it to it"
	| attrValue |

	attrValue := self extendedValueOf: 'canUnassign' ifAbsent: [^self].

	(attrValue asLowercase = 'false') ifTrue: [canUnassign := false]