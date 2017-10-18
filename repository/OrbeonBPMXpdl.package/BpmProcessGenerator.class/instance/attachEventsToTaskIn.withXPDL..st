process definition creation
attachEventsToTaskIn: aBpmProcessDefinition withXPDL: aXPDLWorflowProcess
	"The receiver attach events to tasks in <aBpmProcessDefinition> as is defined in xpdl process <aXPDLWorflowProcess>"

	aBpmProcessDefinition getTasks do: [:taskDefinition | | xpdlElement |
		xpdlElement := aXPDLWorflowProcess getTaskNamed: taskDefinition name ifNone: [].
		xpdlElement attachedEvents do: [:eventNode | | bpmEvent |
			bpmEvent := aBpmProcessDefinition getIntermediateEventNamed: eventNode getName ifNone: [].
			taskDefinition attachEvent: bpmEvent.
		]. 
	].