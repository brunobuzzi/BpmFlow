other
renderCalendarOperationsOn: html

	html div class: 'float-left'; with: [
		html anchor class: 'margin-left-5px';
				callback: [self addValue: true named: 'hoursPane']; 
				with: [html image url: (SEWAFIconLibrary / #clock32Png);
										title: ('Set Hours' translateFor: self session user);
										altText: ('Set Hours' translateFor: self session user)].
	].
	html div class: 'float-left'; with: [
		html div class: 'margin-left-10px float-left centered-unique-form'; with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Global Operations' translateFor: self session user)].
						html label with: ('Select Operation' translateFor: self session user).
						html submitButton callback: [self addSundays]; with: ('Add Sundays' translateFor: self session user).
						html submitButton callback: [self removeSundays]; with: ('Remove Sundays' translateFor: self session user).	
						html submitButton callback: [self addSaturdays]; with: ('Add Saturdays' translateFor: self session user).
						html submitButton callback: [self removeSaturdays]; with: ('Remove Saturdays' translateFor: self session user).
				]
			]
		].
		html div class: 'margin-left-10px float-left  centered-unique-form'; with: [
			html form with: [
				html fieldSet with: [
					html legend with: [html strong: ('Add Days' translateFor: self session user)].
						html label attributeAt: 'for' put: 'startDate'; with: ('Select Date' translateFor: self session user).
						html textInput 
							class: 'width-100px';
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