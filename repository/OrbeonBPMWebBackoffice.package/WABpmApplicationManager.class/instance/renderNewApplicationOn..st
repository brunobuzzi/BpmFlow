other
renderNewApplicationOn: html

	Smalltalk at: #OrbeonApplication ifAbsent: [^self]. "if the Orbeon package is not installed then no need for this options"

	html label 
		attributeAt: 'for' put: 'app-type';
		with: ('Application Type' translateFor: self session user).
	html radioGroup
		callback: [:value | appType := value];
		selected: appType;
		with: [ :group |
				html label: [group radioButton value: 'BPM'. html text: 'BPM'].
				html label: [group radioButton value: 'Orbeon'. html text: 'Orbeon']].

	html label attributeAt: 'for' put: 'app-name'; with: ('Application Name' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'app-name'; callback: [:value | appName :=  value].