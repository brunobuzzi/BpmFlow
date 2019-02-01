other
renderCalendarHoursOperationsOn: html

	html div class: 'float-left margin-left-5px'; with: [
		html anchor class: 'margin-left-5px';
				callback: [self addValue: false named: 'hoursPane']; 
				with: [html image url: (SEWAFIconLibrary / #calendaricon32Png);
										title: ('Set Days' translateIn: self session);
										altText: ('Set Days' translateIn: self session)].
	].
	html div with: [
		html div class: 'float-left centered-unique-form'; with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Global Operations' translateIn: self session)].
						html submitButton callback: [self addOfficeHours]; with: ('Add Office Hours' translateIn: self session).
						html submitButton callback: [self removeOfficeHours]; with: ('Remove Office Hours' translateIn: self session).
				]
			]
		].
	].
"	html div class: 'float-left centered-unique-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend with: [html strong: ('Add Hours' translateIn: self session)].
					html label attributeAt: 'for' put: 'startDate'; with: ('Select Hour' translateIn: self session).
					self renderGenericActiveComboOn: html withList: (#(''), self getDayHours) in: componentValues forVariable: 'hour' label: ('Hour' translateIn: self session).
					html submitButton callback: [self addSelectedHour]; with: ('Add' translateIn: self session).
					html submitButton callback: [self removeSelectedHour]; with: ('Remove' translateIn: self session).
			]
		]
	].
"