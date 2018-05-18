all values
xpdlReaderForAllValues

	^(XPDLReader2 forProcessNamed: 'all values' withString: self processDefinition_all_values)
			connectProcesses;
			yourself