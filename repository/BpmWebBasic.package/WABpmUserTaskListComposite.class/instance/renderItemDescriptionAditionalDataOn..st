top banner
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Created Time:' translateIn: self session)].
	html output: model process createdTime.
	html span: [html strong: ('Current Forms:' translateIn: self session)].
	html output: model printProcessRunningArtifacts.
	html span: [html strong: ('Process Creator:' translateIn: self session)].
	html output: model printCreatorName.
	html span: [html strong: ('Can Unassign:' translateIn: self session)]. 
	html output: (model canUnassign printString translateIn: self session).