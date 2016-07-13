search area
renderProcessTypeComboOn: html

	html label attributeAt: 'for' put: 'processType'; with: ('Process Type' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'processType';
		list: self viewAllArray, (lateralCollection collect: [:each | each processName]) asSet asSortedCollection;
		onChange: 'submit()';
		callback: [:value | self registerProcessType: value];
		selected: (searchValues at: 'process-type' ifAbsent: ['']).