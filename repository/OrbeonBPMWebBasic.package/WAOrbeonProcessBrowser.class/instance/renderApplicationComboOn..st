search area
renderApplicationComboOn: html

	html label 
		attributeAt: 'for' put: 'application';
		with: ('Application' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'application';
		list: (#(''), (self session user getApplications collect: [:each | each applicationName])) asSet asSortedCollection;
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'application'.];
		selected: (self searchValueAt: 'application' ifAbsent: ['']).