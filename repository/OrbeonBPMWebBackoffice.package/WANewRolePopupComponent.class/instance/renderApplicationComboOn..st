other
renderApplicationComboOn: html

	html label attributeAt: 'for' put: 'application'; with: ('Application' translateFor: self session user).
	html select 
		attributeAt: 'id' put: 'application';
		list: #(' '), (self session user getBackofficeApplications collect: [:each | each getApplicationNameForCombo]) asSortedCollection; 
		callback: [:value | | selectedApplication | 
			selectedApplication :=  (value size > 9) 
				ifTrue: [self getApplicationManagerClass getAnyApplicationNamed: (value allButLast: 9)]
				ifFalse: [nil].
			self addValue: selectedApplication applicationName named: 'application'.
		]";
		selected: (selectedApplication ifNotNil: [selectedApplication getApplicationNameForCombo] ifNil: [''])".