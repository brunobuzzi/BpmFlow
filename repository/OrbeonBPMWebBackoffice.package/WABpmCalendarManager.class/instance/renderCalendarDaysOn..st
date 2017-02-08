other
renderCalendarDaysOn: html
	| svgCanvas year notWorkingDays  |
	
	notWorkingDays := Dictionary new.
	svgCanvas := 	JASVGIGraphCanvas newWidth: '1400px' height: '1000px'.
	year := Date today year.

	selectedLateralItem days do: [:each | notWorkingDays at: each dayOfYear put: 100].
	
	svgCanvas drawCalendar: notWorkingDays 
					at: 25@25
					from: (Date fromString: '01/01/', year printString)
					to: (Date fromString: '12/31/', year printString)
					width: 18
					color: 'darkred'
					dayHasContent: true.

	html html: svgCanvas contents.