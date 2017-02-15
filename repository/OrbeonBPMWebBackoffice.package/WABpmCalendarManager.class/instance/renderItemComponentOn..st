other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	(selectedLateralItem name = 'Default') ifFalse: [self renderDeleteCalendarOn: html]. "Default calendar can not be removed"
	self renderAddCalendarOn: html.

	html div with: [
		(self componentValueAt: 'hoursPane') 
		ifFalse: [html div with: [
			self renderCalendarOperationsOn: html.
			self renderCalendarDaysOn: html.]]
		ifTrue: [html div with: [
			self renderCalendarHoursOperationsOn: html.
			self renderCalendarHoursOn: html]].
	].