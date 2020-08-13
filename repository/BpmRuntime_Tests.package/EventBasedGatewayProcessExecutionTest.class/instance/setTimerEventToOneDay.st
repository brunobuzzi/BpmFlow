other
setTimerEventToOneDay
	| timerDefinition |

	timerDefinition := receiverProcesDef getAllArtifacts detect: [:each | each isTimerEvent] ifNone: [self assert: false].
	timerDefinition setActivationBlock:  [:lastExecutedTime :currentTime :process | (lastExecutedTime plusDays: 1) <= currentTime].