other
renderContentOn: html

	html div class: 'float-left'; with: [
		(self componentValueAt: 'hoursPane') 
		ifFalse: [html div with: [
			self renderYearsListOn: html.
			self renderCalendarOperationsOn: html.
			self renderCalendarDaysOn: html.]]
		ifTrue: [html div with: [
			self renderCalendarHoursOperationsOn: html.
			self renderCalendarHoursOn: html]].
	].