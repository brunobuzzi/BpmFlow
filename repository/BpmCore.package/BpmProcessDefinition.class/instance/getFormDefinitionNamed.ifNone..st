get artifacts
getFormDefinitionNamed: formName ifNone: aBlock
	"The receiver answer a form definition <OrbeonFormDefinition> named <endFormName>.
	If the form does not exist evaluate the zero argument block <aBlock>"
	| taskDefinition |

	taskDefinition := self getTasks detect: [:each | each name = formName] ifNone: [^aBlock value].

	^taskDefinition getObjectModel