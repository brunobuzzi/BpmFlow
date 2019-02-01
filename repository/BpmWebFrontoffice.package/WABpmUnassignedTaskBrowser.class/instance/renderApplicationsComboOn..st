other
renderApplicationsComboOn: html

	html label attributeAt: 'for' put: 'applications'; with: ('Applications' translateIn: self session).
	html select "Process Definition List"
		attributeAt: 'id' put: 'applications'; 
		list: (#(''), ((self session user getApplicationsIn: self session bpmEnvironment) collect: [:each | each applicationName])) asSortedCollection;
		callback: [:appName | self onApplicationChanged: appName];
		onChange: 'submit()';
		selected: (searchValues at: 'application' ifAbsent: ['']).