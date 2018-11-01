other
renderItemDescriptionAditionalDataOn: html

	selectedLateralItem isTimerEvent 
	ifFalse: ["is a process definition" | timerStatus styleColor |
		selectedLateralItem automaticCreationIsActive 
		ifTrue: [timerStatus := true.
					styleColor := 'color: darkgreen;'] 
		ifFalse: [timerStatus := false.
					styleColor := 'color: red;'].
		html span: [html strong: ('Timer is Active:' translateFor: self session user)]. 
		html strong style: styleColor; with: timerStatus.
		html span: [html strong: ('Assignation Policy:' translateFor: self session user)]. 
		html output: (selectedLateralItem printPolicyName translateFor: self session user).
		selectedLateralItem hasAutomaticTaskAssignation ifTrue: [html output: ' @'].
	]
	ifTrue: [
		html span: [html strong: ('Event Name:' translateFor: self session user)]. 
		html output: selectedLateralItem taskName.
	]