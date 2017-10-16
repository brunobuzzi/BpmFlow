script process
xpdlReaderForScriptProcess

	^(XPDLReader2 forProcessNamed: 'Process with Scripts' withString: self xpdlExample_process_with_script)
			connectProcesses;
			yourself