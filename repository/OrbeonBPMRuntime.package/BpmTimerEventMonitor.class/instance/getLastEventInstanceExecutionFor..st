monitor process artifact
getLastEventInstanceExecutionFor: aBpmEventInstance
	"The receiver answer <aTimeStamp> the latest execution for the event <aBpmEventInstance>"
	| bpmProcess lastEvent |

	bpmProcess := aBpmEventInstance process.

	"if there is none previous executed event --> the first event is taken as the last"
	lastEvent := bpmProcess getLastEventNamed: aBpmEventInstance getDefinitionName ifNone: [aBpmEventInstance].

	^lastEvent lastExecutionTime