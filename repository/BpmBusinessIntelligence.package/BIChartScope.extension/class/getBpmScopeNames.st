*bpmbusinessintelligence
getBpmScopeNames

	^(OrderedCollection new
		add: BpmChartGlobalScope scopeName;
		add: BpmChartApplicationScope scopeName;
		add: BpmChartProcessScope scopeName;
		add: BpmChartMultipleValueFieldScope scopeName;
		add: BpmChartMultipleFieldsScope scopeName;
		add: BpmChartRoleScope scopeName;
		add: BpmChartUserScope scopeName;
		yourself) asArray