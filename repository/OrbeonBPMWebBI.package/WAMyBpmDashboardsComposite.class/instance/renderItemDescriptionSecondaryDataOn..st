other
renderItemDescriptionSecondaryDataOn: html

	"selectedLateralItem applicationName ifNotNil: [:value | 
		html span: [html strong: ('Application:' translateFor: self session user)].
		html output: value.
	].
	selectedLateralItem processName ifNotNil: [:value | 
		html span: [html strong: ('Process Name:' translateFor: self session user)].
		html output: value.
	]."