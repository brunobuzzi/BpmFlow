other
renderCalendarOperationsOn: html

	html div with: [
		html div class: 'float-left' ; with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Global Operations' translateFor: self session user)].
						html submitButton callback: [self addSundays]; with: ('Add Sundays' translateFor: self session user).
						html submitButton callback: [self removeSundays]; with: ('Remove Sundays' translateFor: self session user).	
						html submitButton callback: [self addSaturdays]; with: ('Add Saturdays' translateFor: self session user).
						html submitButton callback: [self removeSaturdays]; with: ('Remove Saturdays' translateFor: self session user).
				]
			]
		].
		html div with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Add' translateFor: self session user)].
						html label attributeAt: 'for' put: 'startDate'; with: ('Select Date' translateFor: self session user).
						html textInput 
							attributeAt: 'id' put: 'startDate';
							value: ((self componentValueAt: 'startDate') ifNil: [Date today] ifNotNil: [:value | value]);
							callback: [ :value | self addValue: value named: 'startDate'];
							script: (html jQuery new datepicker onSelect: (html jQuery ajax serializeThis)).
						html submitButton callback: [self addSelectedDay]; with: ('Add' translateFor: self session user).
						html submitButton callback: [self removeSelectedDay]; with: ('Remove' translateFor: self session user).
				]
			]
		].
	].