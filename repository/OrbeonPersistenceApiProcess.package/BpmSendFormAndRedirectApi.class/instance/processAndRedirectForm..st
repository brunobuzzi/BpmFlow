other
processAndRedirectForm: anOrbeonFormInstance
	"The receiver process the form <anOrbeonFormInstance> sent by Orbeon.
	1- Extract from the form the [oop] of the transition associated with the form and get the transition.
	2- Extract from the form the [oop] of the assignment associated with the form and get the assignment.
	3- Connect the form, the transitions and the assignment.
	4- Update the collection's field of the process.
	5- Answer an HTML with the redirect to be performed by Orbeon (and then Orbeon do the redirect to the Seaside application)"
	| artifactOop assignOop artifact assignment serviceResult |

	artifactOop := anOrbeonFormInstance valueAt: 'oop'. "get the oop of the <anOrbeonFormTransition>"
	assignOop := anOrbeonFormInstance valueAt: 'assignmentOop'. "get the oop of the <anOrbeonProcessAssignment>"
		"get the Domain Object with -oop- in the form"
	[artifact := Object _objectForOop: (Integer fromString: artifactOop).
	assignment := Object _objectForOop: (Integer fromString: assignOop).] on: Error
		do: [:ex | ^BpmCodeEvaluationResult exception: ex].

	artifact externalObject: anOrbeonFormInstance. "artifact <aBpmArtifactInstance> associated with the Form <instance>"
	anOrbeonFormInstance assignment: assignment. "set the assignment where the form was edited"
	artifact processDefinition updateFieldsOf: anOrbeonFormInstance. "the indexes of the BpmProcessDefinition are updated here"
	serviceResult := BpmCodeEvaluationResult result: artifact.
	 "answer an HTML code with a redirect to the previous (but updated) page "
	 ^restHandler generateHtmlFor: serviceResult result
			xml: anOrbeonFormInstance xmlString 
			params: (Array with: anOrbeonFormInstance id with: language with: valid with: anOrbeonFormInstance getApplicationName with: anOrbeonFormInstance formName)