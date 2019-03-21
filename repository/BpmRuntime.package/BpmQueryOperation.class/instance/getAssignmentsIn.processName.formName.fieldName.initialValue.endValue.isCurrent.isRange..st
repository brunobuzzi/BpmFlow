field value
getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2 isCurrent: currentBoolean isRange: rangeBoolean
	"The receiver answer a collection of taken or finished assignments based on <Boolean> value <currentBoolean>.
	In Application <appName> in BpmProcess <procName> in form named <formName> at field <fieldName> with value <fieldValue> or values <fieldValue2, fieldValue2> based on <rangeBoolean>"

	^currentBoolean 
		ifTrue: [rangeBoolean 
						ifTrue: [self getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2] 
						ifFalse: [self getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue] 
					] 
		ifFalse: [rangeBoolean 
						ifTrue: [self getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2] 
						ifFalse: [self getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue]
					]