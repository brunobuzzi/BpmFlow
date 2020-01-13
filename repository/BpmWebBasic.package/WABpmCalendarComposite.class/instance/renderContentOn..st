other
renderContentOn: html

	self renderAddCalendarOn: html.
	html div class: 'float-left'; with: [
		(mainPanel selectedLateralItem name = 'Default') ifFalse: [self renderDeleteCalendarOn: html]. "Default calendar can not be removed"

		(self componentValueAt: 'hoursPane') 
		ifFalse: [html div with: [
			self renderYearsListOn: html.
			self renderCalendarOperationsOn: html.
			self renderCalendarDaysOn: html.]]
		ifTrue: [html div with: [
			self renderCalendarHoursOperationsOn: html.
			self renderCalendarHoursOn: html]].
	].