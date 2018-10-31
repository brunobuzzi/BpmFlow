monitor process artifact
getLastEventInstanceExecutionFor: aBpmEventInstance ifNoneExecution: aBlock
	"The receiver answer <aTimeStamp> the latest execution for the event <aBpmEventInstance>.
	If the timer never has been executed then evaluate the niladic block <aBlock>"
	| bpmProcess eventsInstances |

	bpmProcess := aBpmEventInstance process.

	"if there is none previous executed event --> the first event is taken as the last"
	eventsInstances := bpmProcess getEventsNamed: aBpmEventInstance getDefinitionName ifNone: [^aBlock value].

	"if size is 1 --> the timer has been created but never triggered"
	(eventsInstances size = 1) ifTrue: [^aBlock value].

	^eventsInstances last lastExecutionTime