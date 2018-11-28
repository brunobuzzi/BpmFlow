other
createMessageBody

	^body := 'Application: ', applicationName, '##', 
		'Process Name: ', processName, '##', 
		'Process Id: ', processId printString, '##', 
		'Creation Date: ', self createdTime printString