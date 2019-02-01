other
renderProcessDefinitionOn: html for: eachProcess

	html div class: 'unique-wide-list-item-summary'; with: [
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Process Id:' translateIn: self session)].
			html output: eachProcess processId.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Process Name:' translateIn: self session)].
			html output: eachProcess processName.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Version:' translateIn: self session)].
			html output: eachProcess version.].
		html div class: 'unique-wide-list-item-data'; with: [
			html strong with: [html span: ('Application:' translateIn: self session)].
			html output: eachProcess applicationName.].
	].