subclass responsibility
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem applicationName ifNotNil: [:value | 
		html span: [html strong: ('Application:' translateIn: self session)].
		html output: value.
	].
	selectedLateralItem processName ifNotNil: [:value | 
		html span: [html strong: ('Process Name:' translateIn: self session)].
		html output: value.
	].
	selectedLateralItem processVersion ifNotNil: [:value | 
		html span: [html strong: ('Version:' translateIn: self session)].
		html output: value.
	].
	selectedLateralItem printStartDate ifNotNil: [:value | 
		html span: [html strong: ('From:' translateIn: self session)].
		html output: value.
	].
		selectedLateralItem printEndDate ifNotNil: [:value | 
		html span: [html strong: ('To:' translateIn: self session)].
		html output: value.
	].
	(selectedLateralItem queryBlockSource notNil and: [selectedLateralItem queryBlockSource notEmpty and:[self notAnEmptyQueryBlock]]) ifTrue: [
		html break.
		html span: [html strong: ('Condition:' translateIn: self session)].
		html output: selectedLateralItem queryBlockSource.
	].