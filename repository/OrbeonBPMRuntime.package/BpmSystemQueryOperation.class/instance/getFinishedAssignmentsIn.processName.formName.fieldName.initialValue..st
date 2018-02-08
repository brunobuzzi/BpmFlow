field value
getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue

	^(BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) select: [:each | each hasFinalized]