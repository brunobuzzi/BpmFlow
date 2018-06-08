subclass responsibility
renderLateralItemDetailsOn: html for: aLateralItem

	aLateralItem applicationName ifNotNil: [html output: aLateralItem applicationName].
	aLateralItem processName ifNotNil: [html output: aLateralItem processName].
	aLateralItem formName ifNotNil: [html output: aLateralItem formName].
	aLateralItem fieldName ifNotNil: [html strong with: [html output: '.', aLateralItem fieldName]].