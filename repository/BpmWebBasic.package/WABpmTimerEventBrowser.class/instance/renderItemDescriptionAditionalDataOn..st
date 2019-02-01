other
renderItemDescriptionAditionalDataOn: html

	selectedLateralItem isTimerEvent 
	ifFalse: ["is a process definition" | timerStatus styleColor |
		selectedLateralItem automaticCreationIsActive 
		ifTrue: [timerStatus := true.
					styleColor := 'color: darkgreen;'] 
		ifFalse: [timerStatus := false.
					styleColor := 'color: red;'].
		html span: [html strong: ('Timer is Active:' translateIn: self session)]. 
		html strong style: styleColor; with: timerStatus.
		html span: [html strong: ('Assignation Policy:' translateIn: self session)]. 
		html output: (selectedLateralItem printPolicyName translateIn: self session).
		selectedLateralItem hasAutomaticTaskAssignation ifTrue: [html output: ' @'].
	]
	ifTrue: [
		html span: [html strong: ('Event Name:' translateIn: self session)]. 
		html output: selectedLateralItem taskName.
	]