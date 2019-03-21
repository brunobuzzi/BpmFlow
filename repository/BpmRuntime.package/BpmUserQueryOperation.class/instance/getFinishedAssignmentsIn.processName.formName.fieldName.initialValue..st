field value
getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue
	"The receiver answer a collection with all finished assignments by <BpmUser> <user>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> with value <fieldValue>"

	^(BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) 
		select: [:each | (user == each user) and:[each hasFinalized]]