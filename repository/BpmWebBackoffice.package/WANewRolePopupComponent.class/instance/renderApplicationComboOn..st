other
renderApplicationComboOn: html

	html label attributeAt: 'for' put: 'application'; with: ('Application' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'application';
		list: #(' '), ((self session user getBackofficeApplicationsIn: self session bpmEnvironment) collect: [:each | each getApplicationNameForCombo]) asSortedCollection; 
		callback: [:value | | selectedApplication | 
			selectedApplication :=  (value size > 9) 
				ifTrue: [self defaultApplicationManagerClass getAnyApplicationNamed: (value allButLast: 9)]
				ifFalse: [nil].
			"<selectedApplication> can be <nil> when the user has no access to any application (issue #1094)"
			selectedApplication ifNotNil: [self addValue: selectedApplication applicationName named: 'application']. 
		]";
		selected: (selectedApplication ifNotNil: [selectedApplication getApplicationNameForCombo] ifNil: [''])".