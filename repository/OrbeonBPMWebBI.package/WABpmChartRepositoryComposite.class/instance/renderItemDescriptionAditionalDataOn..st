subclass responsibility
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Created Time:' translateFor: self session user)].
	html output: selectedLateralItem createdTime.
	html span: [html strong: ('Report Creator:' translateFor: self session user)].
	html output: selectedLateralItem creatorName.
	html span: [html strong: ('Time to Build:' translateFor: self session user)].
	html output: selectedLateralItem printSecondsToConstruct.

	selectedLateralItem printStartDate ifNotNil: [:value | 
		html span: [html strong: ('From:' translateFor: self session user)].
		html output: value.
	].
	selectedLateralItem printEndDate ifNotNil: [:value | 
	html span: [html strong: ('To:' translateFor: self session user)].
	html output: value.
	].
	selectedLateralItem printDistributionMethod ifNotNil: [:value | 
		html span: [html strong: ('Distribution:' translateFor: self session user)].
		html output: value.
	].
	(selectedLateralItem conditionStringBlock notNil and: [selectedLateralItem conditionStringBlock notEmpty]) ifTrue: [
		html break.
		html span: [html strong: ('Condition:' translateFor: self session user)].
		html output: selectedLateralItem conditionStringBlock.
	].
	html break.
	selectedLateralItem getDescriptionItems keysAndValuesDo: [:label :value | 
		html span: [html strong: (label translateFor: self session user)].
		html output: value.
	].