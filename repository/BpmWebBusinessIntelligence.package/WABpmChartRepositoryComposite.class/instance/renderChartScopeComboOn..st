search area
renderChartScopeComboOn: html
	| scopes |

	scopes := BpmChartScope getAllComboNames asSortedCollection collect: [:each | each translateIn: self session].

	^self renderGenericActiveComboOn: html 
			withList: (#(''), scopes) 
			forVariable: 'scope' 
			label: ('Chart Scope' translateIn: self session)