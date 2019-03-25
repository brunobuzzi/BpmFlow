field value
getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue
	"The receiver answer a collection with taken assignments by <BpmUser> <user>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> with value <fieldValue>"

	^(self defaultProcessDefinitionClass getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) 
		select: [:each | (user == each user) and:[each hasFinalized not]]