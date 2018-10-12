monitor process artifact
triggerArtifactTimersWith: aTimeStamp
	"The receiver iterate over <monitoredEvents> collection and evaluate the timer block of each event instance using the time stamp <aTimeStamp>.
	If the timer block is true and the process is running (could be paused) then event is triggered.
	<monitoredEvents> asArray to avoid the iteration over a collection that might be updated by Web Server Processes (Gems)"

	monitoredEvents asArray do: [:eventInstance | | lastExecutionTime |

		lastExecutionTime := self getLastEventInstanceExecutionFor: eventInstance.

		((eventInstance getTimerBlock value: lastExecutionTime value: aTimeStamp value: eventInstance process) and: [eventInstance processIsRunning])
		ifTrue: [eventInstance generateNextRunningTransitions.
					eventInstance registerExecutionTime: aTimeStamp].
	].


"timer block:

[:lastExecutedTime :currentTime :process | (lastExecutedTime plusSeconds: 180) <= currentTime ]

"