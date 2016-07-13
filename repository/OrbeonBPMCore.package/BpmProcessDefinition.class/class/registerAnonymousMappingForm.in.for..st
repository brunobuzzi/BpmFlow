anonymous mapping
registerAnonymousMappingForm: formName in: appName for: aBpmProcessDefinition

	^self anonymousFormMapping at: (appName, '.', formName) put: aBpmProcessDefinition