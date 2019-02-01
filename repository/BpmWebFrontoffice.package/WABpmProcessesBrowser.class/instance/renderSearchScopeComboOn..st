search area
renderSearchScopeComboOn: html

	html label 
		attributeAt: 'for' put: 'scope';
		with: ('Scope' translateIn: self session).
	html select "Process Definition List"
		attributeAt: 'id' put: 'scope';
		list: (BpmQueryOperation getComboBoxListFor: self session user);
		callback: [:value | self addSearchValue: value named: 'scope'.];
		selected: (self searchValueAt: 'scope' ifAbsent: ['']).