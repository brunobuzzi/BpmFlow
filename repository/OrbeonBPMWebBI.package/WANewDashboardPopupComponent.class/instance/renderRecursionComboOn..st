other
renderRecursionComboOn: html

	html label attributeAt: 'for' put: 'recursion'; with: ('Recursion' translateFor: self session user).
	html select 
		attributeAt: 'id' put: 'recursion';
		list: #('Year' 'Month' 'Week') ; 
		callback: [:value |
			self addValue: value named: 'recursion'.
		]