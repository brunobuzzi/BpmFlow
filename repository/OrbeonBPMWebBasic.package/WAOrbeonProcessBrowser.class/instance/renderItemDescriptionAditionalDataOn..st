process
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Assigned Date:' translateFor: self session user)].
	html output: selectedLateralItem printAssignmentDate.
	html span: [html strong: ('Current Forms:' translateFor: self session user)].
	html output: selectedLateralItem printProcessRunningArtifacts.
	html span: [html strong: ('Process Creator:' translateFor: self session user)].
	html output: selectedLateralItem printCreatorName.
	html span: [html strong: ('Can Unassign:' translateFor: self session user)]. 
	html output: (selectedLateralItem canUnassign printString translateFor: self session user).