other
createMessageBody

	^'Application: ', applicationName, '##', 
		'Process Name: ', processName, '##', 
		'Process Id: ', processId printString, '##', 
		'Task Name: ', taskName, '##', 
		'Role Name: ', roleName, '##', 
		'User Name: ', username, '##', 
		'Creation Date: ', self createdTime printString