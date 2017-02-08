other
renderCalendarHoursOn: html
	| svgCanvas |

	html anchor class: 'margin-left-5px';
			callback: [self addValue: false named: 'hoursPane']; 
			with: [html image url: (SEWAFIconLibrary / #calendaricon32Png);
									title: ('Set Days' translateFor: self session user);
									altText: ('Set Days' translateFor: self session user)].

	svgCanvas := JASVGIGraphCanvas newWidth: '1400px' height: '200px'.

	html div with: [html html: (svgCanvas drawHourCalendar: selectedLateralItem at: 20@20 width: 50 color: 'red' dayHasContent: true) contents].