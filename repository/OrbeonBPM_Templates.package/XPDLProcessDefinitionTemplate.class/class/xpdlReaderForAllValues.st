all values
xpdlReaderForAllValues

	^(self getXpdlReaderClass forProcessNamed: 'all values' withString: self processDefinition_all_values)
			connectProcesses;
			yourself