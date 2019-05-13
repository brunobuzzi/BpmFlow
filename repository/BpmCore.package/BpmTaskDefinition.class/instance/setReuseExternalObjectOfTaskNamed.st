extended attributes
setReuseExternalObjectOfTaskNamed
	"The receiver set the extended attribute <reuseExternalObjectOfTaskNamed>. 
	This task will share the <externalObject> of the task named <reuseExternalObjectOfTaskNamed>.
	Used to share the same form for different roles. Issue #854"
	| attrValue |

	attrValue := self extendedValueOf: 'reuseExternalObjectOfTaskNamed' ifAbsent: [^self].

	(attrValue isNil or: [attrValue isEmpty]) ifTrue: [^self].

	reuseExternalObjectOfTaskNamed := attrValue