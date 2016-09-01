other
renderNewAppFormOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Create Application' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'appName'; with: ('Application Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'appName'; callback: [:value | self addValue: value named: 'appName'].
			].
			html div class: 'top-search-div margin-top-20px width-120px'; with: [
				html label attributeAt: 'for' put: 'appType'; with: ('Is Orbeon ?' translateFor: self session user).
				html checkbox attributeAt: 'id' put: 'appType'; callback: [:value | self addValue: value named: 'isOrbeon'].
			].
			html div id: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createNewApplication]; 
					with: ('Create Application' translateFor: self session user)]
		]
	]