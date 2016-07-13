search area
renderApplicationComboOn: html

	html label attributeAt: 'for' put: 'application'; with: ('Application' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'application'; 
		list: (#(''), (self session user getBackofficeApplications collect: [:each | each applicationName]) asSortedCollection);
		onChange: 'submit()';
		selected: (searchValues at: 'application' ifAbsent: ['']);
		callback: [:value | searchValues at: 'application' put: value].