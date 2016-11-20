subclass responsibility
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Created Time:' translateFor: self session user)].
	html output: selectedLateralItem createdTime.
	html span: [html strong: ('Report Creator:' translateFor: self session user)].
	html output: selectedLateralItem creatorName.
	html span: [html strong: ('Seconds to Build:' translateFor: self session user)].
	html output: selectedLateralItem secondsToConstruct.
	html span: [html strong: ('From:' translateFor: self session user)].
	html output: selectedLateralItem startDate printString.
	html span: [html strong: ('To:' translateFor: self session user)].
	html output: selectedLateralItem endDate printString.
	html span: [html strong: ('Distribution:' translateFor: self session user)].
	html output: selectedLateralItem distributionMethod printString.
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