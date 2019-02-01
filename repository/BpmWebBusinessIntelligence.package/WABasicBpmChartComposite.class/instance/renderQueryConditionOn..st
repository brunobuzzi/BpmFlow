search area
renderQueryConditionOn: html

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'process-condition'; with: ('Condition Block' translateIn: self session).

		html textArea 
			class: 'process-query-condition';
			attributeAt: 'id' put: 'process-condition'; 
			callback: [:value | self addSearchValue: value named: 'process-condition']; 
			with: (self searchValueAt: 'process-condition').
	].