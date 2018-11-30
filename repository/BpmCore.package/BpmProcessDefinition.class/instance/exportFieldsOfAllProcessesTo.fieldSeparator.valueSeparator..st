export
exportFieldsOfAllProcessesTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values of <BpmProcessInstance> in collection <processInstances> to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	^self exportFieldsOfProcesses: processInstances to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator