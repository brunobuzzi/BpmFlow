data entry multirole
xpdlReaderForDataEntryProcess

	^(XPDLReader2 for: 'multi-role' withString: self processDefinition_data_entry)
			connectProcesses;
			yourself