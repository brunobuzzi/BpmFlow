search area
renderTimerTypeComboOn: html

	html label 
		attributeAt: 'for' put: 'timer-type';
		with: ('Timer Type' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'timer-type';
		list: (Array with: 'Creation' with: 'Intermediate') ;
		callback: [:value | self addSearchValue: value named: 'timer-type'.];
		selected: (self searchValueAt: 'timer-type' ifAbsent: ['']).