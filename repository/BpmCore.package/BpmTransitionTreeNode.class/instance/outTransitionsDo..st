other
outTransitionsDo: aBlock

	transition endArtifactDo: [:artifact | artifact attachedEventsOutTransitionsDo: aBlock].

	transition endArtifactDo: [:artifact | artifact outTransitionsDo: aBlock].