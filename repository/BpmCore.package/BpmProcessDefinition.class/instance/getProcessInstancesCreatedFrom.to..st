distribution
getProcessInstancesCreatedFrom: startDate to: endDate
	"The receiver answer a collection of <BpmProcessInstance>s created from start date <startDate> to end date <endDate>"
	| startTimeStamp endTimeStamp |

	startTimeStamp := startDate asTimeStamp.
	endTimeStamp := endDate asTimeStamp.

	^(GsQuery fromString: ('(each.createdTime >= startTimeStamp) & (each.createdTime <= endTimeStamp)') on: processInstancesSet) 
		bind: 'startTimeStamp' to: startTimeStamp; 
		bind: 'endTimeStamp' to: endTimeStamp; 
		queryResult