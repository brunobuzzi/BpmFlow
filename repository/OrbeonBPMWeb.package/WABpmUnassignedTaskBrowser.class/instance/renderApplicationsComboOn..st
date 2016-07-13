other
renderApplicationsComboOn: html

	html label attributeAt: 'for' put: 'applications'; with: ('Applications' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'applications'; 
		list: (#(''), (self session user getApplications collect: [:each | each applicationName])) asSortedCollection;
		callback: [:appName | self onApplicationChanged: appName];
		onChange: 'submit()';
		selected: (searchValues at: 'application' ifAbsent: ['']).