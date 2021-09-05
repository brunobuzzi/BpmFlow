bpm processes
unregisterAnonymousStartFor: aBpmProcessDefinition
	"The receiver unregister as an anonymous start <aBpmProcessDefinition> associated the form named <formName> for application named <appName> "

	^anonymousFormMapping 
				removeKey: aBpmProcessDefinition getAnonymousFormName 
				ifAbsent: [FormToProcessDefinitionMappingException signal: 'This process is NOT mapped to a Form for an anonymous start']