monitor process artifact
getLastEventInstanceExecutionFor: aBpmEventInstance
	"The receiver answer the latest execution for the event <aBpmEventInstance>"
	| bpmProcess lastEvent |

	bpmProcess := aBpmEventInstance process.

	lastEvent := bpmProcess getLastEventNamed: aBpmEventInstance getName ifNone: [^TimeStamp fromString: '1-10-1970 11:55:00 am'].

	^lastEvent creationTime