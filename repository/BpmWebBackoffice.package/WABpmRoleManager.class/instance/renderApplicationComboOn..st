other
renderApplicationComboOn: html

	html select 
		attributeAt: 'id' put: 'application';
		list: #(' '), ((self session user getBackofficeApplicationsIn: self session bpmEnvironment) collect: [:each | each getApplicationNameForCombo]) asSortedCollection; 
		callback: [:value | 
			selectedApplication :=  (value size > 9) 
				ifTrue: [self defaultApplicationManagerClass applicationNamed: (value allButLast: 9)]
				ifFalse: [nil].
		];
		selected: (selectedApplication ifNotNil: [selectedApplication getApplicationNameForCombo] ifNil: ['']).