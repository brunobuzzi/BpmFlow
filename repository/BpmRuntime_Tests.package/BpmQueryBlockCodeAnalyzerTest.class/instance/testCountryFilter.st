other
testCountryFilter

	analyzer blockCode: '[:e | e country = ''Costa Rica'']'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).