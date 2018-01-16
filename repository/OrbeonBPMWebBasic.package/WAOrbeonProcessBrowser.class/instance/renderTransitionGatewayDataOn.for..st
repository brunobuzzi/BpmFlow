process
renderTransitionGatewayDataOn: html for: aBpmArtifactInstance

	aBpmArtifactInstance triggeredGateway ifNotNil: [:gateway |
		gateway outgoingTransitions do: [:transition |  
			html div class: 'transition-data'; with: [
				html strong with: [html span with: ('Condition' translateFor: self session user)].
				html strong with: [html output with: transition getStartConditionsString]].
			html div class: 'transition-data'; with: [
				html strong with: [html span with: ('Next Form' translateFor: self session user)].
				html strong with: [html output with: transition endFormName]].
		]
	].