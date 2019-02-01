upload
renderInformationFormOn: html index: index
	| appId fileId |

	appId := 'orbeonApp-', index printString.
	fileId := 'fileName-', index printString.

	html div class: 'information-xpdl-import float-left';
		with: [
				html div with: [
					html output with: [html strong: ('Uploaded File' translateIn: self session)].
				].
				html div class: 'margin-top-10px'; with: [
					html span with: [html strong: ('Application:' translateIn: self session)].
					html output: (model getMappedApplicationNameAt: index).
				].
				html div class: 'margin-top-10px'; with: [
					html span with: [html strong: ('FileName:' translateIn: self session)].
					html output: (model getMappedXpdlFileNameAt: index).
				].
		].