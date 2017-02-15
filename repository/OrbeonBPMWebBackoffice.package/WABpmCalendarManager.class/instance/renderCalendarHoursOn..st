other
renderCalendarHoursOn: html
	| canvas |
	"html div with: [html html: (svgCanvas drawHourCalendar: selectedLateralItem at: 20@20 width: 50 color: 'red' dayHasContent: true) contents]."

	html div class: 'float-left'; 
		with: [canvas := html svgCanvas.
				canvas attributeAt: 'width' put: '1200px';
							attributeAt: 'height' put: '600px';
							with: [html drawHourCalendar: selectedLateralItem at: 20@20 width: 50 color: 'red' dayHasContent: true parent: self actionMethod: #addRemoveHour:].
				].