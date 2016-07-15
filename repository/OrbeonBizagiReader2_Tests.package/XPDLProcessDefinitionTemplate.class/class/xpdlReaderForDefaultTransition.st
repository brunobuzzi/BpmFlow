default transition
xpdlReaderForDefaultTransition

	^(XPDLReader2 for: 'default-transition-process' withString: self processDefinition_default_transition)
			connectProcesses;
			yourself