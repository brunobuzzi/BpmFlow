field value
getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2

	^(BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2) 
		select: [:each | (user == each user) and:[each hasFinalized]]