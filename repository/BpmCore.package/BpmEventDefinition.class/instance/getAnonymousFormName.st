other
getAnonymousFormName
	| anonymousFormName |

	self outTransitionsLast endArtifactDo: [:artifact | anonymousFormName := artifact applicationName, '.', processDefinition processName, '.', artifact name].

	^anonymousFormName