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
		self renderCalendarGlobalOperationsOn: html.
		self renderCalendarAddDaysOn: html.
	].