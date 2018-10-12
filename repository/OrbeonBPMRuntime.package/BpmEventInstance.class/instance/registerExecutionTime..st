process execution
registerExecutionTime: aTimeStamp
	"The executions TimeStamp are used for Tasks with Attached Timer where the same event can triggered more than once"

	^executions add: aTimeStamp