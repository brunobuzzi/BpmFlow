monitor process artifact
triggerArtifactTimersWith: aTimeStamp


	monitoredEvents do: [:eventInstance | | lastExecutionTime |

		lastExecutionTime := self getLastEventInstanceExecutionFor: eventInstance.

		(eventInstance getTimerBlock value: lastExecutionTime value: aTimeStamp value: eventInstance process)
		ifTrue: [].
	].


"timer block:

[:lastExecutedTime :currentTime :process | (lastExecutedTime plusSeconds: 180) >= currentTime ]

"