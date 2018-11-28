subclass responsibility
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem applicationName ifNotNil: [:value | 
		html span: [html strong: ('Application:' translateFor: self session user)].
		html output: value.
	].
	selectedLateralItem processName ifNotNil: [:value | 
		html span: [html strong: ('Process Name:' translateFor: self session user)].
		html output: value.
	].
	selectedLateralItem processVersion ifNotNil: [:value | 
		html span: [html strong: ('Version:' translateFor: self session user)].
		html output: value.
	].
	selectedLateralItem printStartDate ifNotNil: [:value | 
		html span: [html strong: ('From:' translateFor: self session user)].
		html output: value.
	].
		selectedLateralItem printEndDate ifNotNil: [:value | 
		html span: [html strong: ('To:' translateFor: self session user)].
		html output: value.
	].
	(selectedLateralItem queryBlockSource notNil and: [selectedLateralItem queryBlockSource notEmpty and:[self notAnEmptyQueryBlock]]) ifTrue: [
		html break.
		html span: [html strong: ('Condition:' translateFor: self session user)].
		html output: selectedLateralItem queryBlockSource.
	].