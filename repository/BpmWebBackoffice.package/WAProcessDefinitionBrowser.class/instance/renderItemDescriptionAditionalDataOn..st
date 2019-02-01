process
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Has Anonymous Start:' translateIn: self session)]. 
	html output: selectedLateralItem isAnonymousStartEnabled.
	html span: [html strong: ('Can be Modified:' translateIn: self session)]. 
	html output: selectedLateralItem canModifyPathDefinition.
	html span: [html strong: ('Has Finished Processes:' translateIn: self session)]. 
	html output: selectedLateralItem hasFinishedProcesses.
	html span: [html strong: ('Assignation Policy:' translateIn: self session)]. 
	html output: (selectedLateralItem printPolicyName translateIn: self session).
	selectedLateralItem hasAutomaticTaskAssignation ifTrue: [html output: ' @'].