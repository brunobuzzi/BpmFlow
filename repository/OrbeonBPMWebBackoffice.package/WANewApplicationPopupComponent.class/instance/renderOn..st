other
renderOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('New Application' translateFor: self session user).
					html label for: 'appName'; with: ('Application Name' translateFor: self session user).
					html textInput id: 'appName'; callback: [:value | self addValue: value named: 'appName']. 
					html div class: 'top-search-div margin-top-20px width-120px'; with: [
						html checkbox attributeAt: 'id' put: 'appType'; callback: [:value | self addValue: value named: 'isOrbeon'].
						html label attributeAt: 'for' put: 'appType'; with: ('Is Orbeon ?' translateFor: self session user).
					].
					html button 
						callback: [self createApplication];
						with: ('Create' translateFor: self session user).
				]
			]
	]