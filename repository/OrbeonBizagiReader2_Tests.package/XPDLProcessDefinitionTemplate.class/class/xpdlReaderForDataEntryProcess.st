data entry multirole
xpdlReaderForDataEntryProcess

	^(XPDLReader2 forProcessNamed: 'multi-role' withString: self processDefinition_data_entry)
			connectProcesses;
			yourself