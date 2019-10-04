other
getComponentClass
	"Answer a Seaside Component associated with the receiver.
	The name of the task and the name of the Seaside Component MUST be the same."
	| seasideComponent |

	"if <reuseExternalObjectOfTaskNamed> is used then the component class is based in the original task named <reuseExternalObjectOfTaskNamed>"
	reuseExternalObjectOfTaskNamed ifNotNil: [^self getExternalObjectTaskDefinition getComponentClass].

	seasideComponent := Smalltalk at: (self extendedValueOf: 'seasideComponent' ifAbsent: [^self throwNoComponentFoundException]) asSymbol.

	^seasideComponent