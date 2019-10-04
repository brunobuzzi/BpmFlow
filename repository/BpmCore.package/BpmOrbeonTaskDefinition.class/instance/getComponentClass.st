other
getComponentClass
	"Answer the OrbeonFormDefinition associated with the receiver.
	The name of the task and the name of the OrbeonFormDefinition MUST be the same.
	Also each time a task is created it get the lastest version of the OrbeonFormDefinition "

	"if <reuseExternalObjectOfTaskNamed> is used then the component class is based in the original task named <reuseExternalObjectOfTaskNamed>"
	reuseExternalObjectOfTaskNamed ifNotNil: [^self getExternalObjectTaskDefinition getComponentClass].

	^processDefinition application 
		definitionNamed: name 
		ifNone: [self throwNoComponentFoundException]