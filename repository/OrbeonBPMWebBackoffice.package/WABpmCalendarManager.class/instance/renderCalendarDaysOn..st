other
renderCalendarDaysOn: html
	| svgCanvas1 svgCanvas2 year notWorkingDays  |

	html anchor class: 'margin-left-5px';
			callback: [self addValue: true named: 'hoursPane']; 
			with: [html image url: (SEWAFIconLibrary / #clock32Png);
									title: ('Set Hours' translateFor: self session user);
									altText: ('Set Hours' translateFor: self session user)].
	
	notWorkingDays := Dictionary new.
	svgCanvas1 := 	JASVGIGraphCanvas newWidth: '1400px' height: '200px'.
	year := Date today year.

	selectedLateralItem days do: [:each | notWorkingDays at: each dayOfYear put: 100].
	
	svgCanvas1 drawCalendar: notWorkingDays 
					at: 25@25
					from: (Date fromString: '01/01/', year printString)
					to: (Date fromString: '06/30/', year printString)
					width: 18
					color: 'darkred'
					dayHasContent: true.

	html div with: [html html: svgCanvas1 contents].

	svgCanvas2 := 	JASVGIGraphCanvas newWidth: '1400px' height: '200px'.
	svgCanvas2 drawCalendar: notWorkingDays 
					at: 25@25
					from: (Date fromString: '07/01/', year printString)
					to: (Date fromString: '12/31/', year printString)
					width: 18
					color: 'darkred'
					dayHasContent: true.

	html div with: [html html: svgCanvas2 contents].