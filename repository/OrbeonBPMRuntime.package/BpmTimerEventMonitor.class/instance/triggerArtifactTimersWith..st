monitor process artifact
triggerArtifactTimersWith: aTimeStamp
	"The receiver iterate over <monitoredEvents> collection and evaluate the timer block of each event instance using the time stamp <aTimeStamp>.
	If the timer block is true and the process is running (could be paused) then event is triggered"

	monitoredEvents do: [:eventInstance | | lastExecutionTime |

		lastExecutionTime := self getLastEventInstanceExecutionFor: eventInstance.

		((eventInstance getTimerBlock value: lastExecutionTime value: aTimeStamp value: eventInstance process) and: [eventInstance processIsRunning])
		ifTrue: [eventInstance generateNextRunningTransitions].
	].


"timer block:

[:lastExecutedTime :currentTime :process | (lastExecutedTime plusSeconds: 180) <= currentTime ]

"