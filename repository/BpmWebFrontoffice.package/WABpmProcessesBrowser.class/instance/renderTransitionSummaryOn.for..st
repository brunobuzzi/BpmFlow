process
renderTransitionSummaryOn: html for: aBpmArtifactInstance

	html header with: [html strong: (aBpmArtifactInstance summaryTitle translateFor: self session user)].

	aBpmArtifactInstance getSummaryFieldsValues keysAndValuesDo: [:key :value | 
		html div class: 'transition-data'; with: [
			html strong with: [html span with: key].
			html strong with: [html output with: value]]].