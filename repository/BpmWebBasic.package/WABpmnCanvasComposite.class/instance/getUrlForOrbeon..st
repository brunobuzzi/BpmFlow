other
getUrlForOrbeon: taskName
	| taskInstance uuid |

	model isProcessInstance ifFalse: [^self getUrlForOrbeonFormDefinitionNamed: taskName].

	taskInstance := model getTaskNamed: taskName ifNone: [^nil].

	(taskInstance isGrantedUser: self session user) ifFalse: [^nil]. "ungranted user has no link to the form"
	(mainPanel modeIsFinishedTasks and: [taskInstance isDone not]) ifTrue: [^nil]. 	 "if the task is pending--> use task detail pane to access the task"

	uuid  := BpmOrbeonTempTokenRegistry default createEntryToOrbeonFor: taskInstance for: self session user.

	^mainPanel getUrlFor: taskInstance with: uuid

"	self requestContext request headers
		at: 'Bpmflow-User' put: 'admin';
		at: 'Bpmflow-Group' put: 'admin';
		at: 'Bpmflow-Roles' put: 'admin'.

	self requestContext response
		headerAt: 'bmflow-user' put: 'admin';
		headerAt: 'bmflow-group' put: 'admin';
		headerAt: 'bpmflow-roles' put: 'admin'."