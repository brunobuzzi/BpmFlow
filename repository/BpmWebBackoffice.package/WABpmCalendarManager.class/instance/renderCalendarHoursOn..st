other
renderCalendarHoursOn: html

	html div class: 'float-left'; 
		with: [html svgCanvas
					attributeAt: 'width' put: '1200px';
					attributeAt: 'height' put: '600px';
					with: [html drawHourCalendar: selectedLateralItem at: 20@20 width: 50 color: 'red' dayHasContent: true parent: self actionMethod: #addRemoveHour:].
				].