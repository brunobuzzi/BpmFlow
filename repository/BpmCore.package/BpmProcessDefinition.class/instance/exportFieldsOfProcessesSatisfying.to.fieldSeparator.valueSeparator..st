export
exportFieldsOfProcessesSatisfying: aBlock to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values of <BpmProcessInstance> that satisfy the niladic block <aBlock> to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	^self exportFieldsOfProcesses: (processInstances select: aBlock) to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator