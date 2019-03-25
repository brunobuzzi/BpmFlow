field value
getCurrentAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2
	"The receiver answer a collection with all taken assignments by any <BpmUser>.
	In Application <appName> in BpmProcess <procName> in form name <formName> at field named <fieldName> within range between <fieldValue> and <fieldValue2>"  

	^(self defaultProcessDefinitionClass getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2) reject: [:each | each hasFinalized]