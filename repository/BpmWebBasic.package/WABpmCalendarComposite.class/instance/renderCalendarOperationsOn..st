other
renderCalendarOperationsOn: html

	html div class: 'float-left margin-left-5px'; with: [
		html anchor class: 'margin-left-5px';
				callback: [self addValue: true named: 'hoursPane']; 
				with: [html image url: (SEWAFIconLibrary / #clock32Png);
										title: ('Set Hours' translateIn: self session);
										altText: ('Set Hours' translateIn: self session)].
	].
	html div class: 'float-left'; with: [
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
	].