default transition
xpdlReaderForDefaultTransition

	^(XPDLReader2 forProcessNamed: 'default-transition-process' withString: self processDefinition_default_transition)
			connectProcesses;
			yourself