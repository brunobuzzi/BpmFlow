field value
getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2 isCurrent: currentBoolean isRange: rangeBoolean

	currentBoolean 
		ifTrue: [rangeBoolean 
						ifTrue: [self getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2] 
						ifFalse: [self getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue] 
					] 
		ifFalse: [rangeBoolean 
						ifTrue: [self getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2] 
						ifFalse: [self getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue]
					]