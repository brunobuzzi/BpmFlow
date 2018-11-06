default transition
xpdlReaderForDefaultTransition

	^(self getXpdlReaderClass forProcessNamed: 'default-transition-process' withString: self processDefinition_default_transition)
			connectProcesses;
			yourself