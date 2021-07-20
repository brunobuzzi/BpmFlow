field value
getFinishedAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue
	"The receiver answer a collection with all finished assignments by any <BpmUser>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> with value <fieldValue>"

	^(self systemRoot getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) select: [:each | each hasFinalized]