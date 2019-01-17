other
renderCalendarDaysOn: html
	| notWorkingDays |

	notWorkingDays := Dictionary new.

	(model days select:[:each | each year = selectedYear]) do: [:each | notWorkingDays at: each dayOfYear put: 100].

	html div class: 'float-left'; 
		with: [html svgCanvas
					attributeAt: 'width' put: '820px';
					attributeAt: 'height' put: '200px';
					with: [self renderCalendarOn: html
									calendarDays: notWorkingDays 
									at: 10@10 
									from: (Date fromString: '01/01/', selectedYear printString) 
									to: (Date fromString: '06/30/', selectedYear printString) 
									width: 18 
									color: 'darkred' 
									dayHasContent: true
									parent: self
									actionMethod: #addRemoveDay:].
				].

	html div class: 'float-left'; 
		with: [html svgCanvas
					attributeAt: 'width' put: '820px';
					attributeAt: 'height' put: '200px';
					with: [self renderCalendarOn: html
									calendarDays: notWorkingDays 
									at: 10@10 
									from: (Date fromString: '07/01/', selectedYear printString) 
									to: (Date fromString: '12/31/', selectedYear printString) 
									width: 18 
									color: 'darkred' 
									dayHasContent: true
									parent: self
									actionMethod: #addRemoveDay:].
				].