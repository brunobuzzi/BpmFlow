process
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Has Anonymous Start:' translateFor: self session user)]. 
	html output: selectedLateralItem isAnonymousStartEnabled.
	html span: [html strong: ('Can be Modified:' translateFor: self session user)]. 
	html output: selectedLateralItem canModifyPathDefinition.
	html span: [html strong: ('Has Finished Processes:' translateFor: self session user)]. 
	html output: selectedLateralItem hasFinishedProcesses.
	html span: [html strong: ('Assignation Policy:' translateFor: self session user)]. 
	html output: (selectedLateralItem printPolicyName translateFor: self session user).