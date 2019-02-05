other
renderCalendarAddDaysOn: html

	html div class: 'margin-left-10px float-left  centered-unique-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend with: [html strong: ('Add Days' translateIn: self session)].
					html label attributeAt: 'for' put: 'startDate'; with: ('Select Date' translateIn: self session).
					html textInput 
						class: 'width-100px';
						attributeAt: 'id' put: 'startDate';
						value: ((self componentValueAt: 'startDate') ifNil: [Date today] ifNotNil: [:value | value]);
						callback: [ :value | self addValue: value named: 'startDate'];
						script: (html jQuery new datepicker onSelect: (html jQuery ajax serializeThis)).
					html submitButton callback: [self addSelectedDay]; with: ('Add' translateIn: self session).
					html submitButton callback: [self removeSelectedDay]; with: ('Remove' translateIn: self session).
			]
		]
	].