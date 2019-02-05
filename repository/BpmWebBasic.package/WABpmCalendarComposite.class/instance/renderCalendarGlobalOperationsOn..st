other
renderCalendarGlobalOperationsOn: html

	html div class: 'margin-left-10px float-left centered-unique-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend with: [html strong: ('Global Operations' translateIn: self session)].
					html label with: ('Select Operation' translateIn: self session).
					html submitButton callback: [self addSundays]; with: ('Add Sundays' translateIn: self session).
					html submitButton callback: [self removeSundays]; with: ('Remove Sundays' translateIn: self session).	
					html submitButton callback: [self addSaturdays]; with: ('Add Saturdays' translateIn: self session).
					html submitButton callback: [self removeSaturdays]; with: ('Remove Saturdays' translateIn: self session).
			]
		]
	].