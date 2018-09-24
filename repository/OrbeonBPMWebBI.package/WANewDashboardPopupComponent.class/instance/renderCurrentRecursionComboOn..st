other
renderCurrentRecursionComboOn: html

	html label attributeAt: 'for' put: 'recursion'; with: ('Recursion' translateFor: self session user).
	html select 
		attributeAt: 'id' put: 'recursion';
		list: BpmDashboardRecursionDefinition getComboBoxNames; 
		callback: [:value | self model instanceRecursion:  (self getRecursionFrom: value)];
		selected: (self model instanceRecursion comboBoxName).