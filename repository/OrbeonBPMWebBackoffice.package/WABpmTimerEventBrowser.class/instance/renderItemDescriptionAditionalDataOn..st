other
renderItemDescriptionAditionalDataOn: html

	selectedLateralItem isTimerEvent 
	ifFalse: ["is a process definition"
		html span: [html strong: ('Timer is Active:' translateFor: self session user)]. 
		html output: selectedLateralItem automaticCreationIsActive.
		html span: [html strong: ('Assignation Policy:' translateFor: self session user)]. 
		html output: (selectedLateralItem printPolicyName translateFor: self session user).
		selectedLateralItem hasAutomaticTaskAssignation ifTrue: [html output: ' @'].
	]
	ifTrue: [
		html span: [html strong: ('Event Name:' translateFor: self session user)]. 
		html output: selectedLateralItem taskName.
	]