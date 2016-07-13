*orbeonBPMRuntime
validateUser: username password: password

	^BpmUser cache anySatisfy: [:each | each username = username and:[each password = password]]