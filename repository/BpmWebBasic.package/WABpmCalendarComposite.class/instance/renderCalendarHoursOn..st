other
renderCalendarHoursOn: html

	html div class: 'float-left'; 
		with: [html svgCanvas
					attributeAt: 'width' put: '1200px';
					attributeAt: 'height' put: '600px';
					with: [self renderHourCalendarOn: html calendar: model at: 20@20 width: 50 color: 'red' dayHasContent: true parent: self actionMethod: #addRemoveHour:].
				].