search area
renderQueryConditionOn: html
	| inputText cssClass |

	cssClass := (self componentValueAt: 'queryBlock-error') ifNotNil: ['background-red'] ifNil: [''].
	inputText := (self componentValueAt: 'queryBlock-error') ifNotNil: [:value |  (self searchValueAt: 'process-condition'), ' >> ', value] ifNil: [self searchValueAt: 'process-condition'].

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'process-condition'; with: ('Condition Block' translateIn: self session).

		html textArea 
			class: 'process-query-condition ', cssClass;
			attributeAt: 'id' put: 'process-condition'; 
			callback: [:value | self addSearchValue: value named: 'process-condition']; 
			with: inputText.
	].