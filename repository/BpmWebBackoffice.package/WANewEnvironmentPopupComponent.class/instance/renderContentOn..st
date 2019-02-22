other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form with: [
			html fieldSet with: [
				html legend: ('New Environment' translateIn: self session).
				html label for: 'app-name'; with: ('Environment Name' translateIn: self session).
				html textInput id: 'env-name'; callback: [:value | self addValue: value named: 'envName'].
				html label for: 'seaside-app'; with: ('Seaside Application Name' translateIn: self session).
				html textInput id: 'seaside-app'; callback: [:value | self addValue: value named: 'seasideApplicationName']; value: 'bpmflow'. 
				html submitButton 
					callback: [self createEnviroment];
					with: ('Create' translateIn: self session).
			]
		]
	]