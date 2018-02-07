other
renderProcessDefinitionOn: html for: eachProcess

	html div class: 'unique-wide-list-item-summary'; with: [
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Process Id:' translateFor: self session user)].
			html output: eachProcess processId.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Process Name:' translateFor: self session user)].
			html output: eachProcess processName.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Version:' translateFor: self session user)].
			html output: eachProcess version.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Application:' translateFor: self session user)].
			html output: eachProcess applicationName.].
	].