other
renderQueryConditionOn: html

	html label attributeAt: 'for' put: 'process-condition'; with: ('Condition Block' translateFor: self session user).

	html textArea 
		class: 'process-query-condition';
		attributeAt: 'id' put: 'process-condition'; 
		callback: [:value | self addSearchValue: value named: 'process-condition']; 
		with: (self searchValueAt: 'process-condition').