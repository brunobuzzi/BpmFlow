get artifacts
getTypeOf: fieldNamed in: formName ifNone: aBlock
	"The receiver answer the type of the field named <fieldNamed> in the form definition named <formName>.
	If the form is not found then evaluate the zero argument block <aBlock>"
	| taskDefinition |

	taskDefinition := self getTaskNamed: formName ifNone: [^aBlock value].

	^taskDefinition getObjectModel stTypeOf: fieldNamed