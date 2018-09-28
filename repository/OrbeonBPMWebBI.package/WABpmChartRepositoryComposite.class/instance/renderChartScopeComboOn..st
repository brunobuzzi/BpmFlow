search area
renderChartScopeComboOn: html
	| scopes |

	scopes := BpmChartScope getAllComboNames asSortedCollection collect: [:each | each translateFor: self session user].

	^self renderGenericActiveComboOn: html 
			withList: (#(''), scopes) 
			forVariable: 'scope' 
			label: ('Chart Scope' translateFor: self session user)