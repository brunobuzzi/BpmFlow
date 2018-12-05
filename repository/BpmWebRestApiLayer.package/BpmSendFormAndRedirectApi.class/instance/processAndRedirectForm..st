other
processAndRedirectForm: anOrbeonFormInstance
	"The receiver process the form <anOrbeonFormInstance> sent by Orbeon.
	1- Extract from the form the [oop] of the transition associated with the form and get the transition.
	2- Extract from the form the [oop] of the assignment associated with the form and get the assignment.
	3- Connect the form, the transitions and the assignment.
	4- Update the collection's field of the process.
	5- Answer an HTML with the redirect to be performed by Orbeon (and then Orbeon do the redirect to the Seaside application)"
	| artifactOop assignOop assignment |

	artifactOop := anOrbeonFormInstance valueAt: 'oop'. "get the oop of the <aBpmTaskInstance>"
	assignOop := anOrbeonFormInstance valueAt: 'assignmentOop'. "get the oop of the <aBpmTaskAssignment>"
		"get the Domain Object with -oop- in the form"
	[bpmArtifact := Object _objectForOop: (Integer fromString: artifactOop).
	assignment := Object _objectForOop: (Integer fromString: assignOop).] on: Error
		do: [:ex | ^BpmCodeEvaluationResult exception: ex].

	self sendInformationMessageFor: assignment.

	bpmArtifact externalObject: anOrbeonFormInstance. "artifact <aBpmArtifactInstance> associated with the Form <instance>"
	anOrbeonFormInstance assignment: assignment. "set the assignment where the form was edited"
	bpmArtifact processDefinition updateFieldsOf: anOrbeonFormInstance. "the indexes of the BpmProcessDefinition are updated here"

	^self