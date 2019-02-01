search area
renderApplicationComboOn: html

	html label 
		attributeAt: 'for' put: 'application';
		with: ('Application' translateIn: self session).
	html select "Process Definition List"
		attributeAt: 'id' put: 'application';
		list: (#(''), ((self session user getBackofficeApplicationsIn: self session bpmEnvironment) collect: [:each | each applicationName]) asSet asArray) asSortedCollection;
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'application'.];
		selected: (self searchValueAt: 'application' ifAbsent: ['']).