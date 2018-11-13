data entry multirole
xpdlReaderForDataEntryProcess

	^(self getXpdlReaderClass forProcessNamed: 'multi-role' withString: self processDefinition_data_entry)
			connectProcesses;
			yourself