other
renderCalendarDaysOn: html
	| year notWorkingDays |

	notWorkingDays := Dictionary new.
	year := Date today year.

	model days do: [:each | notWorkingDays at: each dayOfYear put: 100].

	html div class: 'float-left'; 
		with: [html svgCanvas
					attributeAt: 'width' put: '820px';
					attributeAt: 'height' put: '200px';
					with: [self renderCalendarOn: html
									calendarDays: notWorkingDays 
									at: 10@10 
									from: (Date fromString: '01/01/', year printString) 
									to: (Date fromString: '06/30/', year printString) 
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
									from: (Date fromString: '07/01/', year printString) 
									to: (Date fromString: '12/31/', year printString) 
									width: 18 
									color: 'darkred' 
									dayHasContent: true
									parent: self
									actionMethod: #addRemoveDay:].
				].