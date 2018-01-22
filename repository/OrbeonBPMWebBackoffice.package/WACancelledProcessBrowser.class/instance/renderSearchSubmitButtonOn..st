other
renderSearchSubmitButtonOn: html
	| styleOption |

	styleOption := self renderFilterFields ifFalse: ['margin-top: 20px;'] ifTrue: [''].

	html div class: 'top-search-filters-one';
		style: styleOption;
		with: [
			html submitButton 
				class: '';
				callback: [self searchMatchingProcesses]; 
				with: ('Search' translateFor: self session user).
		]