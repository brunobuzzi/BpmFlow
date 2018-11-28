add artifacts
addAllParticipants: aCollection
	"The receiver add all participants <BpmParticipantDefinition> in the collection <aCollection>"

	^aCollection do: [:bpmParticipant | participants at: bpmParticipant name put: bpmParticipant]