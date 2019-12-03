search area
renderQueryConditionOn: html
	| inputText cssClass |

	cssClass := (self componentValueAt: 'queryBlock-error') 
						ifNotNil: ['background-red'] 
						ifNil: [(self componentValueAt: 'queryBlock-runtime-error') ifNil: [''] ifNotNil: ['background-red']].

	inputText := (self componentValueAt: 'queryBlock-error') 
						ifNotNil: [:value |  (self searchValueAt: 'process-condition' ifAbsent: ['']), ' >> ', value] 
						ifNil: [(self componentValueAt: 'queryBlock-runtime-error') 
								ifNil: [self searchValueAt: 'process-condition' ifAbsent: []] 
								ifNotNil: [:value | (self searchValueAt: 'process-condition' ifAbsent: ['']), ' >> ', value]].

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'process-condition'; with: ('Condition Block' translateIn: self session).

		html textArea 
			class: 'process-query-condition ', cssClass;
			attributeAt: 'id' put: 'process-condition'; 
			callback: [:value | self addSearchValue: value named: 'process-condition']; 
			with: inputText.
	].