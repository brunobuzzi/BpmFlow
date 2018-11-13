script process
xpdlReaderForScriptProcess

	^(self getXpdlReaderClass forProcessNamed: 'Process with Scripts' withString: self xpdlExample_process_with_script)
			connectProcesses;
			yourself