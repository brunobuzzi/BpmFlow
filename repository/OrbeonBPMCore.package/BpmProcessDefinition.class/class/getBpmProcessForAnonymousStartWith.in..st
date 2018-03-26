anonymous mapping
getBpmProcessForAnonymousStartWith: formName in: appName
	"The receiver answer a <BpmProcessDefinition> associated with the Form <formName> in Application <appName>. If none is associated raise an Exception.
	This process can have an anonymous starter/user (nil)"

	^self anonymousFormMapping 
		at: (appName, '.', formName)
		ifAbsent: [^FormToProcessDefinitionMappingException signal: 'There is NO <BpmProcessDefinition> mapped to form [', formName, '] in Application [', appName, '] for anonymous start']