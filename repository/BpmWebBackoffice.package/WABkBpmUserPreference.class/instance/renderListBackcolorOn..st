other
renderListBackcolorOn: html

	html fieldSet with:[
		html legend with: [html strong: ('Table Report' translateIn: self session)].
		html label attributeAt: 'for' put: 'tableReport.backcolor'; with: ('Backcolor' translateIn: self session).
		html textInput attributeAt: 'id' put: 'tableReport.backcolor'; 
			value: self session user userOptions getTableReportBackcolor;
			callback: [:value | self session user userOptions getTableReportBackcolor: value].	 
	].
	html fieldSet with:[
		html legend with: [html strong: ('Select Table' translateIn: self session)].
		html label attributeAt: 'for' put: 'selectTable.selectedColor'; with: ('Selected Color' translateIn: self session).
		html textInput attributeAt: 'id' put: 'selectTable.selectedColor'; 
			value: self session user userOptions getSelectTableSelectedColor;
			callback: [:value | self session user userOptions getSelectTableSelectedColor: value].	
		html label attributeAt: 'for' put: 'selectTable.nonSelectedColor'; with: ('Non Selected Color' translateIn: self session).
		html textInput attributeAt: 'id' put: 'selectTable.nonSelectedColor'; 
			value: self session user userOptions getSelectTableNonSelectedColor;
			callback: [:value | self session user userOptions getSelectTableNonSelectedColor: value].
	].
	html fieldSet with:[
		html legend with: [html strong: ('Boolean Table' translateIn: self session)].
		html label attributeAt: 'for' put: 'booleanTable.backcolor'; with: ('Backcolor' translateIn: self session).
		html textInput attributeAt: 'id' put: 'booleanTable.backcolor'; 
			value: self session user userOptions getBooleanTableBackcolor;
			callback: [:value | self session user userOptions getBooleanTableBackcolor: value].	
	].