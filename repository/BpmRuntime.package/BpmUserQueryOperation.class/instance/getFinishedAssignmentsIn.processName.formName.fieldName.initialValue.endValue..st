field value
getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2
	"The receiver answer a collection with all finished assignments by <BpmUser> <user>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> within range between <fieldValue> and <fieldValue2>"

	^(self defaultProcessDefinitionClass getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2) 
		select: [:each | (user == each user) and:[each hasFinalized]]