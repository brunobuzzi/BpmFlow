other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('New Application' translateIn: self session).
					html label for: 'appName'; with: ('Application Name' translateIn: self session).
					html textInput id: 'appName'; callback: [:value | self addValue: value named: 'appName']. 
					html div class: 'top-search-div margin-top-20px width-120px'; with: [
						html checkbox attributeAt: 'id' put: 'appType'; callback: [:value | self addValue: value named: 'isOrbeon'].
						html label attributeAt: 'for' put: 'appType'; with: ('Is Orbeon ?' translateIn: self session).
					].
					html button 
						callback: [self createApplication];
						with: ('Create' translateIn: self session).
				]
			]
	]