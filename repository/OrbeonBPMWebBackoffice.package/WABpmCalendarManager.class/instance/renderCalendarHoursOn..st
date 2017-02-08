other
renderCalendarHoursOn: html




	html anchor class: 'margin-left-5px';
			callback: [self addValue: false named: 'hoursPane']; 
			with: [html image url: (SEWAFIconLibrary / #calendaricon32Png);
									title: ('Set Days' translateFor: self session user);
									altText: ('Set Days' translateFor: self session user)].