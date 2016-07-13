other
sewafTableForUserCategories

	^(SewafSelectTableReport summary: 'User Process Categories')
		"rows: self getAllUserCategories; "
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #name title: 'Category Name' onClick: 
						[:each | (selectedCategory == each) 
									ifTrue: [model := BpmProcessInstanceCategory new. selectedCategory := nil] 
									ifFalse: [model := selectedCategory := each]]);
						add: self categoryColorColumn;
						yourself);
		selectedObject: selectedCategory;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself