inform
createMessageBody

	^'Application: ', self applicationName,
		'Process Name: ', self processName,
		'Process Id: ', self processId printString,
		'Task Name: ', self taskName,
		'Role Name: ', self roleName,
		'User Name: ', self user username,
		'Creation Date: ', self creationDate printString