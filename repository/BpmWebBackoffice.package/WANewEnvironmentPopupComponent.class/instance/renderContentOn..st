other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form with: [
			html fieldSet with: [
				html legend: ('New Environment' translateFor: self session user).
				html label for: 'app-name'; with: ('Environment Name' translateFor: self session user).
				html textInput id: 'env-name'; callback: [:value | self addValue: value named: 'envName']. 
				html submitButton 
					callback: [self createEnviroment];
					with: ('Create' translateFor: self session user).
			]
		]
	]