chart options
renderIndexComboOn: html

	html label attributeAt: 'for' put: 'index'; with: ('Index' translateIn: self session).
	html select 
		class: 'display-block';
		attributeAt: 'id' put: 'recursion';
		list: (1 to: model itemsSize) asArray; 
		callback: [:value | model setIndex: value];
		selected:  model chartIndex