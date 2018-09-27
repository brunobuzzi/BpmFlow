other
renderRecursionComboOn: html

	html label attributeAt: 'for' put: 'recursion'; with: ('Recursion' translateFor: self session user).
	html select 
		class: 'display-block';
		attributeAt: 'id' put: 'recursion';
		list: BpmDashboardRecursionDefinition getComboBoxNames; 
		callback: [:value |
			self addValue: value named: 'recursion'.
		]