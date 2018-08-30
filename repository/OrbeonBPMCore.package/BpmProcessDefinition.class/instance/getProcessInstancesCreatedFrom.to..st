distribution
getProcessInstancesCreatedFrom: startDate to: endDate
	"The receiver answer a collection of <BpmProcessInstance>s created from start date <startDate> to end date <endDate>"

	^(GsQuery fromString: ('(each.createdTime >= startDate) & (each.createdTime <= endDate)') on: processInstancesSet) 
		bind: 'startDate' to: startDate; 
		bind: 'endDate' to: endDate; 
		queryResult