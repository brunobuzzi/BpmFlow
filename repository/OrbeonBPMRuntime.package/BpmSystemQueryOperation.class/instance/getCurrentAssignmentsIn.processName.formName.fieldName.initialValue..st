field value
getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue

	^(BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) reject: [:each | each hasFinalized]