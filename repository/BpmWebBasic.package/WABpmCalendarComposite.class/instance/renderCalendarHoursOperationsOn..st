other
renderCalendarHoursOperationsOn: html

	html div class: 'float-left margin-left-5px'; with: [
		html anchor class: 'margin-left-5px';
				callback: [self addValue: false named: 'hoursPane']; 
				with: [html image url: (SEWAFIconLibrary / #calendaricon32Png);
										title: ('Set Days' translateFor: self session user);
										altText: ('Set Days' translateFor: self session user)].
	].
	html div with: [
		html div class: 'float-left centered-unique-form'; with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Global Operations' translateFor: self session user)].
						html submitButton callback: [self addOfficeHours]; with: ('Add Office Hours' translateFor: self session user).
						html submitButton callback: [self removeOfficeHours]; with: ('Remove Office Hours' translateFor: self session user).
				]
			]
		].
	].
"	html div class: 'float-left centered-unique-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend with: [html strong: ('Add Hours' translateFor: self session user)].
					html label attributeAt: 'for' put: 'startDate'; with: ('Select Hour' translateFor: self session user).
					self renderGenericActiveComboOn: html withList: (#(''), self getDayHours) in: componentValues forVariable: 'hour' label: ('Hour' translateFor: self session user).
					html submitButton callback: [self addSelectedHour]; with: ('Add' translateFor: self session user).
					html submitButton callback: [self removeSelectedHour]; with: ('Remove' translateFor: self session user).
			]
		]
	].
"