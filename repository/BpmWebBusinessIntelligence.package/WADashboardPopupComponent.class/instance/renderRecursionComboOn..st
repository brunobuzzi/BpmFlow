other
renderRecursionComboOn: html

	self createReverseTranslation.

	html label attributeAt: 'for' put: 'recursion'; with: ('Recursion' translateFor: self session user).
	html select 
		class: 'display-block';
		attributeAt: 'id' put: 'recursion';
		list: recursionNames; 
		callback: [:value |
			self addValue: value named: 'recursion'.
		]