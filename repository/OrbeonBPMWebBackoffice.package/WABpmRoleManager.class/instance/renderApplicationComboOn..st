other
renderApplicationComboOn: html

	html select 
		attributeAt: 'id' put: 'application';
		list: #(' '), (self session user getBackofficeApplications collect: [:each | each getApplicationNameForCombo]) asSortedCollection; 
		callback: [:value | 
			selectedApplication :=  (value size > 9) 
				ifTrue: [self getApplicationManagerClass getAnyApplicationNamed: (value allButLast: 9)]
				ifFalse: [nil].
		];
		selected: (selectedApplication ifNotNil: [selectedApplication getApplicationNameForCombo] ifNil: ['']).