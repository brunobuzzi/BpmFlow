other
sewafTableForUserCategories

	^(SewafSelectTableReport summary: 'User Process Definition Categories')
		rows: self getAllUserCategories; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #name title: ('Category Name' translateFor: self session user) onClick: 
						[:each | (selectedCategory == each) ifTrue: [selectedCategory := nil] ifFalse: [selectedCategory := each]]);
						add: self categoryColorColumn;
						yourself);
		selectedObject: selectedCategory;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself