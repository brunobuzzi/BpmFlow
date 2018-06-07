search area
renderChartScopeComboOn: html

	^self renderGenericActiveComboOn: html 
			withList: (#(''), BpmChartScope getAllComboNames asSortedCollection) 
			forVariable: 'scope' 
			label: ('Chart Scope' translateFor: self session user)