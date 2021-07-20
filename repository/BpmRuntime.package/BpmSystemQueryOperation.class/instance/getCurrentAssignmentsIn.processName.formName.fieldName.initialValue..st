field value
getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue
	"The receiver answer a collection with all taken assignments by any <BpmUser>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> with value <fieldValue>"

	^(self systemRoot getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue) reject: [:each | each hasFinalized]